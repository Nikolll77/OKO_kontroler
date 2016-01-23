unit odinpb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, frxClass, frxDBSet, Data.Win.ADODB,
  frxExportRTF, frxExportCSV, frxExportPDF;

type
  TfrmOdinPB = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
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
  frmOdinPB: TfrmOdinPB;

implementation

{$R *.dfm}

uses mainunit, ModuleReports,ProcessForm;

procedure TfrmOdinPB.BitBtn2Click(Sender: TObject);
var
kas:integer;
kas_set:string;
op_date1,op_date2:TDateTime;
first_time_flag:boolean;
begin
first_time_flag:=true;

op_date1:=DateTimePicker1.Date;
op_date2:=DateTimePicker2.Date;
DataSource1.DataSet.First;
ProcessFrm.Memo1.Clear;
ProcessFrm.Show;

frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\for1pbtitle.fr3');
frxReport1.Script.Variables['ddate1']:=MainForm.ConvertDate(op_date1,0,false);
frxReport1.Script.Variables['ddate2']:=MainForm.ConvertDate(op_date2,0,false);
frxReport1.PrepareReport(true);
  kas_set:='';
  while not DataSource1.DataSet.eof do
  begin
    if DBGrid1.SelectedRows.CurrentRowSelected then
    begin
      kas:=DBGrid1.Columns[0].Field.Value;
      kas_set:=kas_set+IntToStr(kas)+',';
      ProcessFrm.Memo1.lines.add('Каса ('+IntToStr(kas)+') Виконується запит до бази даних ...');

      frxReport1.Script.Variables['punktname']:=DBGrid1.Columns[1].Field.Value;
      frxReport1.Script.Variables['adres']:=DBGrid1.Columns[2].Field.Value;
      frxDBDataset1.DataSet:=mainform.DataBase.getOVsumm(kas,op_date1,op_date2);
      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\for1pb.fr3');

     //      if first_time_flag then begin first_time_flag:=false;  frxReport1.PrepareReport(true) end else
          frxReport1.PrepareReport(false);

    end;
    DataSource1.DataSet.Next;
  end;

  delete(kas_set,length(kas_set),1);

  frxReport1.Script.Variables['punktname']:='------------------------------------------------';
  frxReport1.Script.Variables['adres']:='По всім касам загально';
  frxDBDataset1.DataSet:=mainform.DataBase.getOVItogo(kas_set,op_date1,op_date2);
  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\for1pb.fr3');
  frxReport1.PrepareReport(false);

ProcessFrm.Close;
frxReport1.ShowPreparedReport;
end;

procedure TfrmOdinPB.BitBtn3Click(Sender: TObject);
begin
DataSource1.DataSet.FindFirst;
while not  DataSource1.DataSet.Eof do
begin
 DBGrid1.SelectedRows.CurrentRowSelected:=true;
 DataSource1.DataSet.next;
end;


end;

procedure TfrmOdinPB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TfrmOdinPB.FormCreate(Sender: TObject);
begin
DataSource1.DataSet:=MainForm.DataBase.getOVOpkasList;
DataSource1.DataSet.Filter:='for1pb=1';
DataSource1.DataSet.Filtered:=true;
DateTimePicker1.Date:=Date;
DateTimePicker2.Date:=Date;

end;
end.
