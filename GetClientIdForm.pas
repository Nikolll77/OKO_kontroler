unit GetClientIdForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmGetClentId = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    klient_id:integer;
    klient_Name:string;
    klient_dok:string;
  end;

var
  frmGetClentId: TfrmGetClentId;

implementation

{$R *.dfm}

uses mainunit;

procedure TfrmGetClentId.BitBtn1Click(Sender: TObject);
var
filter:string;
begin
if CheckBox1.Checked then filter:=edit1.Text
else filter:='%'+edit1.Text+'%';

DataSource1.DataSet:=MainForm.Database.GetClientsList(filter);

end;

procedure TfrmGetClentId.BitBtn2Click(Sender: TObject);
begin
try
klient_Id:=DBGrid1.Columns[0].Field.Value;
klient_Name:=DBGrid1.Columns[1].Field.Value;
klient_dok:=DBGrid1.Columns[3].Field.Value;
Close;
except end;
end;

procedure TfrmGetClentId.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=VK_RETURN then BitBtn2.Click;

end;

procedure TfrmGetClentId.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmGetClentId.FormCreate(Sender: TObject);
begin
 klient_id:=0;
 klient_Name:='';
 klient_dok:='';
end;

procedure TfrmGetClentId.FormShow(Sender: TObject);
begin
Edit1.SelectAll;
Edit1.SetFocus;
end;

end.
