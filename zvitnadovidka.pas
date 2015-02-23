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
    BitBtn1: TBitBtn;
    DataSource2: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
datas:TDataSet;
begin
kas:=DBGrid1.Columns[0].Field.Value;
op_date:=DateTimePicker1.DateTime;


DataSource2.DataSet:=mainform.DataBase.GetOvList(kas,op_date,1);//MainForm.Reports.zvitnadovidka(kas,op_date);
frxDBDataset1.DataSet:=DataSource2.DataSet;

DataSource2.DataSet:=mainform.DataBase.GetOvList(kas,op_date,1,true);
frxDBDataset2.DataSet:=DataSource2.DataSet;

DataSource2.DataSet:=mainform.DataBase.GetOvList(kas,op_date,2);
frxDBDataset3.DataSet:=DataSource2.DataSet;

DataSource2.DataSet:=mainform.DataBase.GetOvList(kas,op_date,2,true);
frxDBDataset4.DataSet:=DataSource2.DataSet;

frxReport1.Script.Variables['ddate']:=op_date;
frxReport1.Script.Variables['punktname']:='';
frxReport1.Script.Variables['adres']:='';
frxReport1.Script.Variables['kasir']:='';
frxReport1.Script.Variables['dirbuh']:='';
frxReport1.Script.Variables['nam']:='';

frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\zvitna.fr3');
frxReport1.ShowReport;

end;

procedure TFormZvitnaDovidka.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
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
