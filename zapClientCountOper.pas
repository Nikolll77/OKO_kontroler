unit zapClientCountOper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, mainunit;

type

  TKlientsCountOper = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label5: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    Button1: TButton;


    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
    _opkas_id:integer;
    _mode:TMode;

    procedure setOpkasId(value:integer);
    function getOpkasId:integer;
    procedure setMode(value:TMode);
    function getMode:TMode;

  public
    { Public declarations }
    property mode: TMode read getMode write setmode;
    property opkas_id : integer read getOpkasId write setOpkasId ;
    procedure FillItemsWithData(items:Tstrings);
  end;

var
  KlientsCountOper: TKlientsCountOper;

implementation

{$R *.dfm}

uses GetOpkasIdForm;

function TKlientsCountOper.getMode:TMode;
begin
result:=_mode;
end;

procedure TKlientsCountOper.setMode(value:TMode);
begin
  _mode:=value;

  case mode of
  modeALL:
        begin
          KlientsCountOper.Caption:='Кількість операцій по кліентам';
          ComboBox1.ItemIndex:=0; //all
          ComboBox1.Enabled:=true;
        end;
  modeOV:
        begin
          KlientsCountOper.Caption:='Кількість операцій по НЕ ІДЕНТИФІКОВАНИМ кліентам (обмін валют)';
          ComboBox1.ItemIndex:=2; // OV
          ComboBox1.Enabled:=false;
        end;
  end; // сase mode


end;


function TKlientsCountOper.getOpkasId:integer;
begin
result:=_opkas_id;
end;

procedure TKlientsCountOper.setOpkasId(value:integer);
begin
  _opkas_id:=value;

  if opkas_id=0 then Edit1.Text:='Всі каси'
  else Edit1.Text:=IntToStr(_opkas_id);

  try
  Edit1.text:=Edit1.text+' '+frmgetOpkasId.opkas_Name+' '+frmgetOpkasId.opkas_Adress;
  except  end;

  Edit1.Hint:=Edit1.Text;
end;

procedure TKlientsCountOper.Button1Click(Sender: TObject);
begin
Application.CreateForm(TfrmgetOpkasId,frmgetOpkasId);
frmgetOpkasId.showmodal;
opkas_id:=frmgetOpkasId.opkas_Id;
end;

procedure TKlientsCountOper.Edit1Change(Sender: TObject);
begin

if edit1.Text='' then opkas_id:=0;

end;

procedure TKlientsCountOper.FillItemsWithData(items:Tstrings);
begin
  items.AddObject('Все сиситемы',TObject(0));
  items.AddObject('Western Union',TObject(1));
  items.AddObject('Обмін валют',TObject(2));
  items.AddObject('Welsend',TObject(4));
  items.AddObject('Anelik',TObject(5));
  items.AddObject('Unistream',TObject(6));
  items.AddObject('RIA',TObject(7));
  items.AddObject('MoneyGram',TObject(8));
  items.AddObject('Blizko',TObject(9));
  items.AddObject('Contact',TObject(10));
  items.AddObject('Avers',TObject(11));
  items.AddObject('GlobalMoney',TObject(12));
  items.AddObject('Лидер',TObject(13));
  items.AddObject('Migom',TObject(14));
end;


procedure TKlientsCountOper.BitBtn1Click(Sender: TObject);
var
perevod_system:integer;
begin
//DateTimePicker1
//DateTimePicker2
perevod_system:=Integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
//opkas_id


case mode of
 modeALL:   datasource1.DataSet:=MainForm.DataBase.getClientsWithCountOpers(DateTimePicker1.date,DateTimePicker2.date,perevod_system,opkas_id);
 modeOV:   datasource1.DataSet:=MainForm.DataBase.getUncnownOVClientsWithCountOpers(DateTimePicker1.date,DateTimePicker2.date,opkas_id);
end;
end;

procedure TKlientsCountOper.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TKlientsCountOper.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;

ComboBox1.Clear;
FillItemsWithData(ComboBox1.Items);
ComboBox1.ItemIndex:=0;

opkas_id:=0;

end;

end.
