unit zvitnaOstatok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, frxClass, frxDBSet, Data.Win.ADODB;

type
  TfrmZvitnaOstatok = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    Label1: TLabel;
    frxDBDataset5: TfrxDBDataset;
    DateTimePicker2: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmZvitnaOstatok: TfrmZvitnaOstatok;

implementation

{$R *.dfm}

uses mainunit, ModuleReports,ProcessForm;

procedure TfrmZvitnaOstatok.BitBtn1Click(Sender: TObject);
var
kas:integer;
op_date:TDateTime;
begin
kas:=DBGrid1.Columns[0].Field.Value;
op_date:=int(DateTimePicker1.Date)+frac(DateTimePicker2.Time);
ProcessFrm.Memo1.Clear;
ProcessFrm.Show;
ProcessFrm.Memo1.lines.add('Виконується запит до бази даних ...');
frxDBDataset1.DataSet:=mainform.DataBase.getOVOstatki(kas,op_date);
ProcessFrm.Close;



frxReport1.Script.Variables['ddate']:=' cтаном на '+MainForm.ConvertDate(op_date,op_date,true);
frxReport1.Script.Variables['punktname']:=DBGrid1.Columns[1].Field.Value;;
frxReport1.Script.Variables['adres']:=DBGrid1.Columns[2].Field.Value;

//frxReport1.Script.Variables['kasir']:=mainform.DataBase.getKassirNameByDay(kas,op_date);
//frxReport1.Script.Variables['dirbuh']:='Бухгалтер';

frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\ostatokOv.fr3');
frxReport1.ShowReport;

end;


procedure TfrmZvitnaOstatok.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmZvitnaOstatok.FormCreate(Sender: TObject);
begin
DataSource1.DataSet:=MainForm.DataBase.getOVOpkasList;
DateTimePicker1.Date:=Date;
DateTimePicker2.Time:=Now;
{DBGrid1.Columns[0].FieldName:='id';
DBGrid1.Columns[0].Title.Caption:='номер';
DBGrid1.Columns[1].FieldName:='name';
DBGrid1.Columns[1].Title.Caption:='назва';}
end;
end.
