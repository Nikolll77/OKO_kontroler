unit zvitnadovidka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, frxClass, frxDBSet;

type
  TFormZvitnaDovidka = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZvitnaDovidka: TFormZvitnaDovidka;

implementation

{$R *.dfm}

uses mainunit, ModuleReports;

procedure TFormZvitnaDovidka.BitBtn1Click(Sender: TObject);
var
kas:integer;
op_date:TDateTime;
begin
kas:=DBGrid1.Columns[0].Field.Value;
op_date:=DateTimePicker1.DateTime;
DataSource2.DataSet:=MainForm.Reports.zvitnadovidka(kas,op_date);
frxDBDataset1.DataSet:=DataSource2.DataSet;


frxReport1.Script.Variables['ddate']:=op_date;
frxReport1.Script.Variables['punktname']:='';
frxReport1.Script.Variables['adres']:='';
frxReport1.Script.Variables['kasir']:='';
frxReport1.Script.Variables['dirbuh']:='';
frxReport1.Script.Variables['nam']:='';




frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\zvitna.fr3');
frxReport1.ShowReport;

end;

procedure TFormZvitnaDovidka.DBGrid1CellClick(Column: TColumn);
begin
 Label1.Caption:=IntToStr(DBGrid1.Columns[0].Field.Value);
end;

procedure TFormZvitnaDovidka.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Label1.Caption:=IntToStr(DBGrid1.Columns[0].Field.Value);
end;

procedure TFormZvitnaDovidka.FormCreate(Sender: TObject);
begin
DataSource1.DataSet:=MainForm.DataBase.getOpkasList;
{DBGrid1.Columns[0].FieldName:='id';
DBGrid1.Columns[0].Title.Caption:='номер';
DBGrid1.Columns[1].FieldName:='name';
DBGrid1.Columns[1].Title.Caption:='назва';}
end;
end.
