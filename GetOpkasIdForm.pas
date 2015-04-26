unit GetOpkasIdForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmgetOpkasId = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    opkas_Id:integer;
    opkas_Name:string;
    opkas_Adress:string;
  end;

var
  frmgetOpkasId: TfrmgetOpkasId;

implementation

{$R *.dfm}

uses mainunit;

procedure TfrmgetOpkasId.BitBtn1Click(Sender: TObject);
begin
opkas_Id:=DBGrid1.Columns[0].Field.Value;
opkas_Name:=DBGrid1.Columns[1].Field.Value;
opkas_Adress:=DBGrid1.Columns[2].Field.Value;
Close;
end;

procedure TfrmgetOpkasId.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmgetOpkasId.FormCreate(Sender: TObject);
begin
DataSource1.DataSet:=MainForm.DataBase.getOpkasList;
opkas_Id:=0;
opkas_Name:='';
opkas_Adress:='';
end;

end.
