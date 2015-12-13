unit formAdm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, FrameFilterKassa, Vcl.ExtCtrls, Vcl.ToolWin,
  Vcl.ComCtrls;

type
  TfrmAdm = class(TForm)
    ToolBar1: TToolBar;
    DBNavigator2: TDBNavigator;
    GroupBox1: TGroupBox;
    FramFilterKassa1: TFramFilterKassa;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox4: TGroupBox;
    DBText1: TDBText;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DataSource1: TDataSource;
    procedure FramFilterKassa1BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdm: TfrmAdm;

implementation

{$R *.dfm}

uses mainunit;

procedure TfrmAdm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TfrmAdm.FormShow(Sender: TObject);
begin
FramFilterKassa1.bitbtn1.click;
end;

procedure TfrmAdm.FramFilterKassa1BitBtn1Click(Sender: TObject);
var
fltr:string;
begin
  fltr:=FramFilterKassa1.getFilter;
  DataSource1.DataSet:=MainForm.DataBase.getOpkasList;
end;

end.
