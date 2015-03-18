unit LimitsCheck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Buttons;

type
  TfrmLimitsCheck = class(TForm)
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLimitsCheck: TfrmLimitsCheck;

implementation

{$R *.dfm}

uses mainunit;

procedure TfrmLimitsCheck.BitBtn1Click(Sender: TObject);
begin
DataSource1.DataSet:=MainForm.DataBase.getSumVidanoHrnByClients(DateTimePicker1.Date,DateTimePicker2.Date,1);
DataSource1.DataSet.Filter:='summa>='+Edit1.Text;
DataSource1.DataSet.Filtered:=true;
end;

procedure TfrmLimitsCheck.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
end;

end.
