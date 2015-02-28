unit zvitnadovidka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, frxClass, frxDBSet, Data.Win.ADODB;

type
  TFormZvitnaDovidka = class(TForm)
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
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetZvitnaData(opkass_id:integer;oper_date:TDateTime):TAdoTable;
  end;

var
  FormZvitnaDovidka: TFormZvitnaDovidka;

implementation

{$R *.dfm}

uses mainunit, ModuleReports,ProcessForm;

procedure TFormZvitnaDovidka.BitBtn1Click(Sender: TObject);
var
kas:integer;
op_date:TDateTime;
datas:TDataSet;
begin
kas:=DBGrid1.Columns[0].Field.Value;
op_date:=DateTimePicker1.DateTime;

ProcessFrm.Memo1.Clear;
ProcessFrm.Show;
ProcessFrm.Memo1.lines.add('(1/5) Формування реестру купленої валюти ...');
frxDBDataset1.DataSet:=mainform.DataBase.GetOvReestr(kas,op_date,1);//MainForm.Reports.zvitnadovidka(kas,op_date);
ProcessFrm.Memo1.lines.add('(2/5) Розрахунок загальних сум по валютам ...');
frxDBDataset2.DataSet:=mainform.DataBase.GetOvReestr(kas,op_date,1,true);
ProcessFrm.Memo1.lines.add('(3/5) Формування реестру проданої валюти ...');
frxDBDataset3.DataSet:=mainform.DataBase.GetOvReestr(kas,op_date,2);
ProcessFrm.Memo1.lines.add('(4/5) Розрахунок загальних сум по валютам ...');
frxDBDataset4.DataSet:=mainform.DataBase.GetOvReestr(kas,op_date,2,true);
ProcessFrm.Memo1.lines.add('(5/5) Розрахунок звітної довідки ...');
frxDBDataset5.DataSet:=GetZvitnaData(kas,op_date);
ProcessFrm.Close;

frxReport1.Script.Variables['ddate']:=' cтаном на '+MainForm.ConvertDate(op_date,now,false);
frxReport1.Script.Variables['punktname']:=DBGrid1.Columns[1].Field.Value;;
frxReport1.Script.Variables['nam']:='';
frxReport1.Script.Variables['adres']:=DBGrid1.Columns[2].Field.Value;
frxReport1.Script.Variables['kasir']:='';
frxReport1.Script.Variables['dirbuh']:='Бухгалтер';


frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'templates\zvitna.fr3');
frxReport1.ShowReport;

end;

function TFormZvitnaDovidka.GetZvitnaData(opkass_id:integer;oper_date:TDateTime):TAdoTable;
var
MSAcessConnection:TADOConnection;
zvitnaTable:TADOTable;

kodv:string;
s,sumuah1,sumuah2:Double;

tmp,ovlist:TADOQuery;
currList:TADOQuery;

begin

MSAcessConnection:=TADOConnection.Create(nil);
MSAcessConnection.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=data\localdata.mdb;Jet OLEDB:Database Password=taturina;Jet OLEDB:Engine Type=5;Jet OLEDB:SFP=False;';
MSAcessConnection.LoginPrompt:=false;
MSAcessConnection.Connected:=true;

zvitnaTable:=TADOTable.Create(nil);
zvitnaTable.TableName:='zvitna';
zvitnaTable.TableDirect:=true;
zvitnaTable.Connection:=MSAcessConnection;

currList:=MainForm.DataBase.getCurrencyList;
ovlist:=MainForm.DataBase.GetOvList(opkass_id,oper_date);

//prepare table

tmp:=TADOQuery.Create(nil);
tmp.Connection:=MSAcessConnection;
tmp.SQL.Clear;
tmp.SQL.add('delete from zvitna');
tmp.ExecSQL;
FreeAndNil(tmp);

//fill with currency codes
zvitnaTable.Open;
while not currList.Eof do
begin
  zvitnaTable.Append;
  zvitnaTable['kodval']:=currList['kod'];
  zvitnaTable.Post;
  currList.Next;
end;
zvitnaTable.Close;
zvitnaTable.Open;
//fill with data
sumuah1:=0;
sumuah2:=0;
while not ovList.Eof do
begin
currList.Locate('abr',ovlist['currency'],[]);
kodv:=currList['kod'];

if zvitnaTable.Locate('kodval',kodv,[]) then
begin
   s:=0;
   case ovlist['oper'] of
   1:   begin
          if zvitnaTable['sumprih']=Null then s:=0 else
                                        s:=zvitnaTable['sumprih'];
          zvitnaTable.Edit;
          zvitnaTable['sumprih']:=s+ovlist['sum'];
          zvitnaTable.Post;
          if kodv<>'980' then
              sumuah1:=sumuah1+ovlist['sumuah'];
        end;

   2:   begin
          if zvitnaTable['sumvidat']=Null then s:=0 else
                                        s:=zvitnaTable['sumvidat'];
          zvitnaTable.Edit;
          zvitnaTable['sumvidat']:=s+ovlist['sum'];
          zvitnaTable.Post;
          if kodv<>'980' then sumuah2:=sumuah2+ovlist['sumuah'];
        end;
   4,5:
        begin
          if zvitnaTable['otink']=Null then s:=0 else
                                        s:=zvitnaTable['otink'];
          zvitnaTable.Edit;
          zvitnaTable['otink']:=s+ovlist['sum'];
          zvitnaTable.Post;
        end;
   3,6,8,9:
        begin
          if zvitnaTable['otzk']=Null then s:=0 else
                                        s:=zvitnaTable['otzk'];
          zvitnaTable.Edit;
          zvitnaTable['otzk']:=s+ovlist['sum'];
          zvitnaTable.Post;
        end;

   13,14,55:
        begin
          if zvitnaTable['kink']=Null then s:=0 else
                                        s:=zvitnaTable['kink'];
          zvitnaTable.Edit;
          zvitnaTable['kink']:=s+ovlist['sum'];
          zvitnaTable.Post;
        end;

   12,15,16,19:
        begin
          if zvitnaTable['kzk']=Null then s:=0 else
                                        s:=zvitnaTable['kzk'];
          zvitnaTable.Edit;
          zvitnaTable['kzk']:=s+ovlist['sum'];
          zvitnaTable.Post;
        end;
   10:
        begin
          if zvitnaTable['sumstart']=Null then s:=0 else
                                        s:=zvitnaTable['sumstart'];
          zvitnaTable.Edit;
          zvitnaTable['sumstart']:=s+ovlist['sum'];
          zvitnaTable.Post;
        end;

   end;
end; //if locate

ovlist.Next;
end;

if zvitnaTable.Locate('kodval','980',[]) then
begin
 zvitnaTable.Edit;
 zvitnaTable['sumprih']:=sumuah2;
 zvitnaTable['sumvidat']:=sumuah1;
 zvitnaTable.Post;
end;


//--------------------------
zvitnaTable.Close;
zvitnaTable.Open;
zvitnaTable.First;
while not zvitnaTable.Eof do
begin
 s:=zvitnaTable['sumstart']+zvitnaTable['otink']+zvitnaTable['otzk']+zvitnaTable['sumprih']
    -zvitnaTable['kink']-zvitnaTable['kzk']-zvitnaTable['sumvidat'];
  zvitnaTable.Edit;
  zvitnaTable['sumend']:=s;
  zvitnaTable.Post;

zvitnaTable.Next;
end;




FreeAndNil(currList);
FreeAndNil(ovlist);

//ADOTable1.Close;
//MSAcessConnection.Connected:=False;
//FreeAndNil(ADOTable1);
//FreeAndNil(MSAcessConnection);
 result:=zvitnaTable;
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
