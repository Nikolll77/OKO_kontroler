unit zvitnaOstatok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, frxClass, frxDBSet, Data.Win.ADODB,
  frxExportRTF, frxExportCSV, frxExportPDF;

type
  TfrmZvitnaOstatok = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Label1: TLabel;
    DateTimePicker2: TDateTimePicker;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
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

procedure TfrmZvitnaOstatok.BitBtn2Click(Sender: TObject);
var
kas:integer;
op_date:TDateTime;
first_time_flag:boolean;
begin
first_time_flag:=true;

op_date:=int(DateTimePicker1.Date)+frac(DateTimePicker2.Time);
DataSource1.DataSet.First;
ProcessFrm.Memo1.Clear;
ProcessFrm.Show;

frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\ostatokOvtitle.fr3');
frxReport1.Script.Variables['ddate']:=' cтаном на '+MainForm.ConvertDate(op_date,op_date,true);
frxReport1.PrepareReport(true);

  while not DataSource1.DataSet.eof do
  begin
    if DBGrid1.SelectedRows.CurrentRowSelected then
    begin
      kas:=DBGrid1.Columns[0].Field.Value;
      ProcessFrm.Memo1.lines.add('Каса ('+IntToStr(kas)+') Виконується запит до бази даних ...');

      frxReport1.Script.Variables['punktname']:=DBGrid1.Columns[1].Field.Value;;
      frxReport1.Script.Variables['adres']:=DBGrid1.Columns[2].Field.Value;
      frxDBDataset1.DataSet:=mainform.DataBase.getOVOstatki(kas,op_date);
      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\ostatokOv.fr3');

//      if first_time_flag then begin first_time_flag:=false;  frxReport1.PrepareReport(true) end else
          frxReport1.PrepareReport(false);
    end;
    DataSource1.DataSet.Next;
  end;
ProcessFrm.Close;
frxReport1.ShowPreparedReport;
end;

procedure TfrmZvitnaOstatok.BitBtn3Click(Sender: TObject);
begin
DataSource1.DataSet.FindFirst;
while not  DataSource1.DataSet.Eof do
begin
 DBGrid1.SelectedRows.CurrentRowSelected:=true;
 DataSource1.DataSet.next;
end;


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
