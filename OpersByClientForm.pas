unit OpersByClientForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, mainunit;

type



  TfrmOpersByClient = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Button1: TButton;
    DataSource1: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    Edit1_message:string;

    _klient_id:integer;
    _mode:TMode;
    procedure setKlientId(value:integer);
    function getKlientID:integer;

     procedure setMode(value:TMode);
    function getMode:TMode;
  public
    { Public declarations }
    property mode: TMode read getMode write setmode;
    property klient_id:integer read getKlientID write setKlientId;


  end;

var
  frmOpersByClient: TfrmOpersByClient;

implementation

{$R *.dfm}

uses GetClientIdForm, GetOpkasIdForm;


function TfrmOpersByClient.getMode:TMode;
begin
result:=_mode;
end;

procedure TfrmOpersByClient.setMode(value:TMode);
begin
  _mode:=value;

  case mode of
  modeALL:
        begin
          frmOpersByClient.Caption:='Операції по кліенту';
          Label6.Caption:='Кліент ID';
          Button1.Visible:=true;
          CheckBox1.Visible:=false;
          DBGrid1.Columns[2].Visible:=false;
          Edit1_message:='Оберіть кліента ->';
          Edit1.Text:=Edit1_message;
        end;
  modeOV:
        begin
          frmOpersByClient.Caption:='Операції по НЕ ІДЕНТИФІКОВАНИМ кліентам (обмін валют)';
          Label6.Caption:='НЕ ідентифікований ПІБ';
          Button1.Visible:=false;
          CheckBox1.Visible:=true;
          DBGrid1.Columns[2].Visible:=true;
          Edit1_message:='ПІБ з dopinfo <-';
          Edit1.Text:=Edit1_message;
          Edit1.SelectAll;
          Edit1.SetFocus;
        end;
  end; // сase mode


end;



function TfrmOpersByClient.getKlientID:Integer;
begin
result:=_klient_id;
end;

procedure TfrmOpersByClient.setKlientId(value:integer);
begin
  _klient_id:=value;
  if _klient_id=0 then edit1.Text:=Edit1_message
  else edit1.Text:=IntToStr(_klient_id);

  try
  Edit1.Text:=Edit1.Text+' '+frmGetClentId.klient_Name+' '+frmGetClentId.klient_dok
  except  end;

  Edit1.Hint:=Edit1.Text;


end;

procedure TfrmOpersByClient.BitBtn1Click(Sender: TObject);
var
filter:string;
begin
case mode of
  modeALL:
    datasource1.DataSet:=MainForm.DataBase.GetOpersByKlient(DateTimePicker1.date,DateTimePicker2.date,klient_id);
  modeOV:
    begin
       if CheckBox1.Checked then filter:=Edit1.Text else filter:='%'+edit1.Text+'%';
       datasource1.DataSet:=MainForm.DataBase.GetOpersByDopinfoOV(DateTimePicker1.date,DateTimePicker2.date,filter);
    end;
end;

end;

procedure TfrmOpersByClient.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmGetClentId,frmGetClentId);
  frmGetClentId.showmodal;
  klient_id:=frmGetClentId.klient_id;
end;

procedure TfrmOpersByClient.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TfrmOpersByClient.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
frmOpersByClient.Width:=MainForm.Width-frmOpersByClient.Left-30;
klient_id:=0;
end;

end.
