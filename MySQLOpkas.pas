unit MySQLOpkas;

interface

uses System.SysUtils,Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB;
//progressForm,
const
CONNECTION_STRING='Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="Driver=MySQL ODBC 5.3 ANSI Driver;SERVER=91.195.75.20;UID=nikolll77;PWD=OK!@34ufgnikolll77;DATABASE=OpkasUFG;PORT=3306;NO_PROMPT=1;AUTO_RECONNECT=1;COLUMN_SIZE_S32=1"';

type

  TOpKassRecord=record
    id:integer;
    volume:string;
    name:string;
    adres:string;
    kassa:string;
  end;

  TbuferClientRecord=record
    id:integer;
    Name:string;
    dType:string;
  	ser:string;
	  num:string;
   	info:string;
   	adres:string;
  	isresident:Smallint;
  	Country:string;
  	firstdate:TDateTime;
  	limitdate:TDateTime;
  	birthday:TDateTime;
  end;

  TbuferOperRecord=record
	  id: integer;
    clients_id:integer;  //online id
	  operdata:TDateTime;
	  opertime:TDateTime;
	  kasirID: integer;
  	kassa: integer;
  	opername:string;
  	oper: integer;
  	mtcn:string;
  	sum:real;
  	currency:string;
  	rateNBU:real;
  	rate:real;
  	cents:real;
	  centsUAH:real;
  	clientID_old: integer;    //local_id
  	Country:string;
  	sumUAH:real;
  	komis:real;
  	storno: integer;
  	storntime:TDateTime;
  	ordPrih: integer;
  	ordVidat: integer;
  	kvit: integer;
  	smena: integer;
  	prizn:string;
  	notate:string;
  	dopinfo:string;
    id_old:integer;
    opkas_id:integer;
    forResinc:integer;
  end;


  TMySqlOpkas=class

  private


      c_NullDate:Double;

  public
//      connected:boolean;
      MysqlConnection: TADOConnection;
      Constructor create();
      Destructor destroy();
      function Connect():Boolean;
//      function Clients_Sinchro(LocalClients: TADOQuery):integer;
//      procedure onConnect(Connection: TADOConnection; const Error: Error; var EventStatus: TEventStatus);
//      procedure onDisconnect(Connection: TADOConnection;  var EventStatus: TEventStatus);
      procedure ClientToBufer(LocalClients:TADOQuery;var buferClientRecord:TbuferClientRecord);
      function GetClientId(buferClientRecord:TbuferClientRecord):integer;
      function GetClientId_Sinchro(buferClientRecord: TbuferClientRecord):integer;
      function insertClientRecord(buferClientRecord:TbuferClientRecord):integer;

      procedure OperToBufer(LocalOpers:TADOQuery;var buferOperRecord:TbuferOperRecord;OperKassa:integer;OnlineClient_id:integer;for_resinc:integer);
      function insertOperRecord(buferOperRecord:TbuferOperRecord):integer;

      function getSumVidanoHrnByClients(date_from,date_to:TDatetime;type_oper:integer):TADOQuery;
      function getSumVidanoHrn(buferClientRec:TbuferClientRecord;date_from,date_to:TDatetime;type_oper:integer):real;


      function GetOpKassIdbyVolume(volume:string):integer;
      function CheckOnlineOpKassId(localOpkasId:integer):integer;      
      function insertOpKass(opkassRecord:TOpKassRecord):integer;
      function getSinchronizedOper(Opkas_ID:integer;DateFrom:TdateTime):TADOQuery;
      function DeleteOpersForResinc(Opkas_ID:integer):integer;
      function getLastOpkasID:integer;
//      function ExportOperWithClient:integer;
      function getOpkasList():TADOQuery;
      function getOVReestr(opkass_id:integer;oper_date:TDateTime; oper:integer =0; groupval:boolean = false):TADOQuery;
      function getOVList(opkass_id:integer;oper_date:TDateTime):TADOQuery;
      function getCurrencyList:TADOQuery;

      function getKassirNameByDay(opkass_id:integer;oper_date:TDateTime):string;
  end;

implementation

uses Math, Variants, Classes;

function TmySqlOpkas.getKassirNameByDay(opkass_id:integer;oper_date:TDateTime):string;
var
zapros:TADOQuery;
p_operdate,p_opkassid:string;
begin
   try FreeAndNil(Zapros) except end;
   Zapros:=TADOQuery.Create(nil);
   with Zapros do
   begin
       Connection:=MysqlConnection;
       SQL.Clear;
       Parameters.Clear;

       p_opkassid:=IntToStr(opkass_id);
       p_operdate:='"'+FormatDateTime('yyyy-mm-dd',oper_date)+'"';

        SQL.add('select o.kasirID, (select name from KASSIRS k where k.id_old=o.kasirID and k.opkas_id='+p_opkassid+') as name from OPER o');
        SQL.add('where o.opkas_id='+p_opkassid+' and date(o.operdata)='+p_operdate+' and o.kasirID>0');
        SQL.add('order by o.kasirID desc');
        SQL.add('limit 1');

{        SQL.add('select o.kasirID, (select name from KASSIRS k where k.id_old=o.kasirID and k.opkas_id=:p_opkassid) as name from OPER o');
        SQL.add('where o.opkas_id=:p_opkassid and date(o.operdata)=:p_operdate and o.kasirID>0');
        SQL.add('order by o.kasirID desc');
        SQL.add('limit 1');

       Parameters.ParamByName('p_opkassid').Value:=opkass_id;
       Parameters.ParamByName('p_operdate').Value:=FormatDateTime('yyyy-mm-dd',oper_date);}
       open;

//       ShowMessage(sql.Text);
   end;
  if zapros['name']<>null then result:=zapros['name']
  else  result:='';
end;



function TmySqlOpkas.getCurrencyList:TADOQuery;
var
  zapros:TADOQuery;
begin

//   try FreeAndNil(Zapros) except end;
   Zapros:=TADOQuery.Create(nil);
   with Zapros do
   begin
       Connection:=MysqlConnection;
       SQL.Clear;
       SQL.add('select * ');
       SQL.add('from CURRENCY ');
       SQL.add('order by id ');
       open;
   end;
  result:=zapros;
end;

function TmySqlOpkas.getOVList(opkass_id:integer;oper_date:TDateTime):TADOQuery;
var
  zapros:TADOQuery;
begin

   try FreeAndNil(Zapros) except end;
   Zapros:=TADOQuery.Create(nil);
   with Zapros do
   begin
       Connection:=MysqlConnection;
       SQL.Clear;
       Parameters.Clear;

       SQL.add('select * ');
       SQL.add('from OPER ');
       SQL.add('where (opkas_id=:opkassid) and (date(operdata)=:operdate) and (storno=false) ');
       SQL.add('and (kassa=2) ');

       Parameters.ParamByName('opkassid').Value:=opkass_id;
       Parameters.ParamByName('operdate').Value:=FormatDateTime('yyyy-mm-dd',oper_date);
       open;
   end;
  result:=zapros;

end;



function TmySqlOpkas.getOVReestr(opkass_id:integer;oper_date:TDateTime; oper:integer =0; groupval:boolean = false):TADOQuery;
var
  zapros:TADOQuery;
begin
//select * from OPER where opkas_id=100 and date(operdata)='2014-07-31'
// select *, time(operdata) as op_time from OPER where opkas_id=100 and date(operdata)='2014-07-31'

//select concat(CURRENCY.name,'(',CURRENCY.kod,')') as currency, time(operdata) as op_time from OPER
//join CURRENCY on OPER.currency=CURRENCY.abr
//where opkas_id=100 and date(operdata)='2014-07-31'


   //try FreeAndNil(Zapros) except end;
   Zapros:=TADOQuery.Create(nil);

   with Zapros do
   begin
       Connection:=MysqlConnection;

       SQL.BeginUpdate;
//       SQL.Clear;
//       Parameters.Clear;
//       SQL.add('select *, time(operdata) as op_time ');
       if groupval then
           SQL.add('SELECT currency as val,oper,SUM(sum) as summ,sum(sumUAH) as summU')
       else
           SQL.add('select time(operdata) as op_time, concat(CURRENCY.name,"(",CURRENCY.kod,")") as currency,sum,rate,sumuah,kvit,storno,notate ');

       SQL.add('from OPER join CURRENCY on OPER.currency=CURRENCY.abr ');
       SQL.add('where (opkas_id=:opkassid) and (date(operdata)=:operdate) ');
       SQL.add('and (kassa=2) ');
       if oper<>0 then  SQL.add('and (oper='+IntToStr(oper)+') ');

       if groupval then
       begin
           SQL.add('and (storno=0) group by currency, oper');
       end;
       SQL.EndUpdate;

       Parameters.ParamByName('opkassid').Value:=opkass_id;
       Parameters.ParamByName('operdate').Value:=FormatDateTime('yyyy-mm-dd',oper_date);
       open;
   end;
  result:=zapros;
end;

function TmySqlOpkas.getOpkasList():TADOQuery;
var
  zapros:TADOQuery;
begin
//select * from OPER where operdata>'2014.07.31'

   Zapros:=TADOQuery.Create(nil);
   with Zapros do
   begin
       Connection:=MysqlConnection;
       SQL.add('select * from OPKASSI');
       open;
   end;
  result:=zapros;
end;

function TmySqlOpkas.DeleteOpersForResinc(Opkas_ID:integer):integer;
var
  zapros:TADOQuery;
begin
   Result:=-1;
   Zapros:=TADOQuery.Create(nil);
   with Zapros do
   begin
       Connection:=MysqlConnection;
       SQL.add('delete from OPER where (forResinc=1) and (opkas_id='+IntToStr(Opkas_ID)+')');
       result:=ExecSql;
   end;
end;

function TmySqlOpkas.getSinchronizedOper(Opkas_ID:integer;DateFrom:TdateTime):TADOQuery;
var
  zapros:TADOQuery;
begin
//select * from OPER where operdata>'2014.07.31'

   Zapros:=TADOQuery.Create(nil);
   with Zapros do
   begin
       Connection:=MysqlConnection;

       SQL.add('select distinct id_old as id, ForResinc from OPER where (operdata>=:datefrom) and (opkas_id='+IntToStr(Opkas_ID)+')');
       Parameters.ParamByName('datefrom').Value:=FormatDateTime('yyyy-mm-dd',DateFrom);
       open;
   end;
  result:=zapros;
end;


function TmySqlOpkas.getSumVidanoHrnByClients(date_from,date_to:TDatetime;type_oper:integer):TADOQuery;
var
  zapros:TADOQuery;
  OnlineClientId:integer;
  tmpString:String;
begin

   case type_oper of
   1: tmpString:=' and (kassa<>2) and (oper=1) '; //выдано клиенту
   2: tmpString:=' and (kassa=2) and (oper=2) '; //валюта(еквивалент) купленая клиентом
   else tmpString:=' oper=1 '; //по всем опрерация гривна в еквиваленте   ()
   end;

   Zapros:=TADOQuery.Create(nil);
   Zapros.Connection:=MysqlConnection;
   Zapros.SQL.Add('select clients_id,name,ser,num,count(clients_id) as koloper,count(distinct opkas_id) as kolkass,sum(sumUAH) as summa from OPER');
   Zapros.SQL.Add('join CLIENTS on clients_id=CLIENTS.ID');
   Zapros.SQL.Add('where (date(operdata)>="'+FormatDateTime('yyyy-mm-dd',date_from)+'") ');
   Zapros.SQL.Add('and (date(operdata)<="'+FormatDateTime('yyyy-mm-dd',date_to)+'")');
   Zapros.SQL.Add(tmpString);
   Zapros.SQL.Add('group by clients_id');
   Zapros.SQL.Add('order by name');

   //ShowMessage(Zapros.SQL.Text);

   zapros.Open;
   result:=zapros;

end;



function TmySqlOpkas.getSumVidanoHrn(buferClientRec:TbuferClientRecord;date_from,date_to:TDatetime;type_oper:integer):real;
var
  zapros:TADOQuery;
  OnlineClientId:integer;
  tmpString:String;
begin
   result:=-1;


   case type_oper of
   1: tmpString:=' and (kassa<>2) and (oper=1) '; //выдано клиенту
   2: tmpString:=' and (kassa=2) and (oper=2) '; //валюта(еквивалент) купленая клиентом
   else tmpString:=' oper=1 '; //по всем опрерация гривна в еквиваленте   ()
   end;


   OnlineClientId:=GetClientId(buferClientRec);


   Zapros:=TADOQuery.Create(nil);
   Zapros.Connection:=MysqlConnection;
   Zapros.SQL.Add('select sum(sumUAH) as summa from OPER where (clients_id>0) and (currency<>"UAH") and (clients_id='+IntToStr(OnlineClientId)+')'+tmpstring+
   ' and (operdata>="'+FormatDateTime('yyyy-mm-dd hh:mm:ss',date_from)+'") and (operdata<="'+FormatDateTime('yyyy-mm-dd hh:mm:ss',date_to)+'")');

   //   ShowMessage(Zapros.SQL.Text);

   zapros.Open;
   if zapros['summa']<>null then
          result:=zapros['summa']
      else result:=0;
   Zapros.Close;
   Zapros.Free;

end;


{procedure TMysqlOpkas.onConnect(Connection: TADOConnection; const Error: Error; var EventStatus: TEventStatus);
begin
  connected:=MysqlConnection.Connected;
end;}

{procedure TMysqlOpkas.onDisconnect(Connection: TADOConnection;  var EventStatus: TEventStatus);
begin
  connected:=False;
end;}

procedure TMysqlOpkas.OperToBufer(LocalOpers:TADOQuery;var buferOperRecord:TbuferOperRecord;OperKassa:integer;OnlineClient_id:integer;for_resinc:integer);
begin
   with buferOperRecord do
   begin

    //id:=LocalOpers['id'];

    if LocalOpers['operdata']=null then operdata:=c_NullDate else operdata:=LocalOpers['operdata'];
    if LocalOpers['opertime']=null then opertime:=c_NullDate else opertime:=LocalOpers['opertime'];
   	if LocalOpers['kasirID']=null then kasirID:=0 else kasirID:=LocalOpers['kasirID'];
   	if LocalOpers['kassa']=null then kassa:=0 else kassa:=LocalOpers['kassa'];
   	if LocalOpers['opername']=null then opername:='' else opername:=LocalOpers['opername'];
   	if LocalOpers['oper']=null then oper:=0 else oper:=LocalOpers['oper'];
   	if LocalOpers['mtcn']=null then mtcn:='' else mtcn:=LocalOpers['mtcn'];
   	if LocalOpers['sum']=null then sum:=0 else sum:=LocalOpers['sum'];
   	if LocalOpers['currency']=null then currency:='' else currency:=LocalOpers['currency'];
   	if LocalOpers['rateNBU']=null then rateNBU:=0 else rateNBU:=LocalOpers['rateNBU'];
   	if LocalOpers['rate']=null then rate:=0 else rate:=LocalOpers['rate'];
   	if LocalOpers['cents']=null then cents:=0 else cents:=LocalOpers['cents'];
   	if LocalOpers['centsUAH']=null then centsUAH:=0 else centsUAH:=LocalOpers['centsUAH'];
   	if LocalOpers['clientID']=null then clientID_old:=0 else clientID_old:=LocalOpers['clientID'];
   	if LocalOpers['Country']=null then Country:='' else Country:=LocalOpers['Country'];
   	if LocalOpers['sumUAH']=null then sumUAH:=0 else sumUAH:=LocalOpers['sumUAH'];
   	if LocalOpers['komis']=null then komis:=0 else komis:=LocalOpers['komis'];
    storno:=LocalOpers['storno'];
    if LocalOpers['storntime']=null then storntime:=c_NullDate else storntime:=LocalOpers['storntime'];
   	if LocalOpers['ordPrih']=null then ordPrih:=0 else ordPrih:=LocalOpers['ordPrih'];
   	if LocalOpers['ordVidat']=null then ordVidat:=0 else ordVidat:=LocalOpers['ordVidat'];
   	if LocalOpers['kvit']=null then kvit:=0 else kvit:=LocalOpers['kvit'];
   	if LocalOpers['smena']=null then smena:=0 else smena:=LocalOpers['smena'];
   	if LocalOpers['prizn']=null then prizn:='' else prizn:=LocalOpers['prizn'];
   	if LocalOpers['notate']=null then notate:='' else notate:=LocalOpers['notate'];
  	if LocalOpers['dopinfo']=null then dopinfo:='' else dopinfo:=LocalOpers['dopinfo'];
  	if LocalOpers['id']=null then id_old:=-1 else id_old:=LocalOpers['id'];

    opkas_id:=OperKassa;
    clients_id:=OnlineClient_id;
    forResinc:=for_resinc;
  end;
end;


procedure TMysqlOpkas.ClientToBufer(LocalClients:TADOQuery;var buferClientRecord:TbuferClientRecord);
begin
   with buferClientRecord do
   begin
    id:=LocalClients['id'];
    if LocalClients['Name']=null then Name:='' else Name:=LocalClients['Name'];
    if LocalClients['dType']=null then dType:='' else dType:=LocalClients['dType'];
  	if LocalClients['ser']=null then ser:='' else ser:=LocalClients['ser'];
	  if LocalClients['num']=null then num:='' else num:=LocalClients['num'];
   	if LocalClients['info']=null then info:='' else info:=LocalClients['info'];
   	if LocalClients['adres']=null then adres:='' else adres:=LocalClients['adres'];
  	isresident:=LocalClients['isresident'];
  	if LocalClients['Country']=null then Country:='' else Country:=LocalClients['Country'];
    if LocalClients['firstdate']=null then firstdate:=c_NullDate else firstdate:=LocalClients['firstdate'];
    if LocalClients['limitdate']=null then limitdate:=c_NullDate else limitdate:=LocalClients['limitdate'];
    if LocalClients['birthday']=null  then birthday:=c_NullDate else birthday:=LocalClients['birthday'];

  end;
end;


function TMysqlOpkas.GetClientId(buferClientRecord:TbuferClientRecord):integer;
var
  zapros:TADOQuery;
begin
   result:=-1;
   Zapros:=TADOQuery.Create(nil);
   Zapros.Connection:=MysqlConnection;
   Zapros.SQL.Add('select id,ser,num from CLIENTS where ser="'+buferClientRecord.ser+'" and num="'+buferClientRecord.num+'"');
     //Zapros.Parameters.ParamByName('serr').Value:=buferClientRecord.ser;
     //Zapros.Parameters.ParamByName('numm').Value:=buferClientRecord.num;
   zapros.Open;
   if zapros.RecordCount>=1 then result:=zapros['id'];
   Zapros.Close;
   Zapros.Free;
end;

function TMysqlOpkas.insertOperRecord(buferOperRecord:TbuferOperRecord):integer;
var
  zapros:TADOQuery;
begin
result:=-1;
//if connected then begin
  Zapros:=TADOQuery.Create(nil);
  Zapros.Connection:=MysqlConnection;
   // Zapros.Parameters.Clear;
  with buferOperRecord do
  begin
    Zapros.SQL.Clear;
    Zapros.SQL.Add('INSERT INTO OPER(operdata,clients_id,kasirID,kassa,opername,oper,mtcn,sum, currency,'+
                                  'rateNBU,rate,cents,centsUAH,clientID_old,Country,sumUAH,komis,storno,'+
                                  'storntime,ordPrih,ordVidat,kvit,smena,prizn,notate,dopinfo,id_old,opkas_id,forresinc) ');
    Zapros.SQL.Add('VALUES ("'+FormatDateTime('yyyy-mm-dd ',operdata)+' '+FormatDateTime('hh:mm',opertime)+'", '+
                                                  IntToStr(clients_id)+', '+  // online id
                                                  IntToStr(kasirID)+', '+
                                                  IntToStr(kassa)+', '+
//                                                       '"'+opername+'", '+
                                                       ':p_opername, '+
                                                  IntToStr(oper)+', '+
                                                       '"'+mtcn+'", '+
                                    StringReplace(FormatFloat('0.000000',sum),',','.',[rfReplaceAll])+', '+
                                                       '"'+currency+'", '+
                                    StringReplace(FormatFloat('0.000000',rateNBU),',','.',[rfReplaceAll])+', '+
                                    StringReplace(FormatFloat('0.000000',rate),',','.',[rfReplaceAll])+', '+
                                    StringReplace(FormatFloat('0.000000',cents),',','.',[rfReplaceAll])+', '+
                                    StringReplace(FormatFloat('0.000000',centsUAH),',','.',[rfReplaceAll])+', '+
                                                  IntToStr(clientID_old)+', '+    //local id
                                                       '"'+Country+'", '+
                                    StringReplace(FormatFloat('0.000000',sumUAH),',','.',[rfReplaceAll])+', '+
                                    StringReplace(FormatFloat('0.000000',komis),',','.',[rfReplaceAll])+', '+
                                                  IntToStr(storno)+', '+
                           '"'+FormatDateTime('yyyy-mm-dd',storntime)+'", '+
                                                  IntToStr(ordPrih)+', '+
                                                  IntToStr(ordVidat)+', '+
                                                  IntToStr(kvit)+', '+
                                                  IntToStr(smena)+', '+
                                                       '"'+prizn+'", '+
                                                       '"'+notate+'", '+
//                                                       '"'+dopinfo+'", '+
                                                       ':p_dopinfo, '+
                                                  IntToStr(id_old)+', '+
                                                  IntToStr(opkas_id)+', '+
                                                  IntToStr(forResinc)+' )');
  end;  //with
  Zapros.Parameters.ParamByName('p_opername').Value:=buferOperRecord.opername;
  Zapros.Parameters.ParamByName('p_dopinfo').Value:=buferOperRecord.dopinfo;

  //ShowMessage(zapros.SQL.Text);
{  с какимито параментрами баг в  TADOQuery ....

    Zapros.SQL.Add('INSERT INTO OPER(operdata,opertime,kasirID,kassa,opername,oper,mtcn,sum, currency,'+
                                  'rateNBU,rate,cents,centsUAH,clientID,Country,sumUAH,komis,storno,'+
                                  'storntime,ordPrih,ordVidat,kvit,smena,prizn,notate,dopinfo) ');
    Zapros.SQL.Add('VALUES (:p_operdata,:p_opertime,:p_kasirID,:p_kassa,:p_opername,:p_oper,:p_mtcn,:p_sum,:p_currency,'+
                          ':p_rateNBU,:p_rate,:p_cents,:p_centsUAH,:p_clientID,:p_Country,:p_sumUAH,:p_komis,:p_storno,'+
                          ':p_storntime,:p_ordPrih,:p_ordVidat,:p_kvit,:p_smena,:p_prizn,:p_notate,:p_dopinfo)');

     Zapros.Parameters.ParamByName('p_operdata'):=buferOperRecord.operdata;
     Zapros.Parameters.ParamByName('p_opertime').Value:=buferOperRecord.opertime;
     Zapros.Parameters.ParamByName('p_kasirID').Value:=buferOperRecord.kasirID;
     Zapros.Parameters.ParamByName('p_kassa').Value:=buferOperRecord.kassa;
     Zapros.Parameters.ParamByName('p_opername').Value:=buferOperRecord.opername;
     Zapros.Parameters.ParamByName('p_oper').Value:=buferOperRecord.oper;
     Zapros.Parameters.ParamByName('p_mtcn').Value:=buferOperRecord.mtcn;
     Zapros.Parameters.ParamByName('p_sum').Value:=buferOperRecord.sum;
     Zapros.Parameters.ParamByName('p_currency').Value:=buferOperRecord.currency;
     Zapros.Parameters.ParamByName('p_rateNBU').Value:=buferOperRecord.rateNBU;
     Zapros.Parameters.ParamByName('p_rate').Value:=buferOperRecord.rate;
     Zapros.Parameters.ParamByName('p_cents').Value:=buferOperRecord.cents;
     Zapros.Parameters.ParamByName('p_centsUAH').Value:=buferOperRecord.centsUAH;
     Zapros.Parameters.ParamByName('p_clientID').Value:=buferOperRecord.clientID;
     Zapros.Parameters.ParamByName('p_Country').Value:=buferOperRecord.Country;
     Zapros.Parameters.ParamByName('p_sumUAH').Value:=buferOperRecord.sumUAH;
     Zapros.Parameters.ParamByName('p_komis').Value:=buferOperRecord.komis;
     Zapros.Parameters.ParamByName('p_storno').Value:=buferOperRecord.storno;
     Zapros.Parameters.ParamByName('p_storntime').Value:=buferOperRecord.storntime;
     Zapros.Parameters.ParamByName('p_ordPrih').Value:=buferOperRecord.ordPrih;
     Zapros.Parameters.ParamByName('p_ordVidat').Value:=buferOperRecord.ordVidat;
     Zapros.Parameters.ParamByName('p_kvit').Value:=buferOperRecord.kvit;
     Zapros.Parameters.ParamByName('p_smena').Value:=buferOperRecord.smena;
     Zapros.Parameters.ParamByName('p_prizn').Value:=buferOperRecord.prizn;
     Zapros.Parameters.ParamByName('p_notate').Value:=buferOperRecord.notate;
     Zapros.Parameters.ParamByName('p_dopinfo').Value:=buferOperRecord.dopinfo;}

//  ShowMessage(Zapros.SQL.text);
  result:=Zapros.ExecSQL;  // колво обработаных записей

  Zapros.Close;
  zapros.Free;

//end; //if
end;

function TMysqlOpkas.insertClientRecord(buferClientRecord:TbuferClientRecord):integer;
var
  zapros:TADOQuery;
begin
result:=-1;
//if connected then begin
   Zapros:=TADOQuery.Create(nil);
   Zapros.Connection:=MysqlConnection;
   Zapros.Parameters.Clear;

  Zapros.SQL.Add('INSERT INTO CLIENTS(name,dType,ser,num,info,adres,isresident,country,firstdate,limitdate,birthday) ');
  Zapros.SQL.Add('VALUES (:p_name,:p_dType,:p_ser,:p_num,:p_info,:p_adres,:p_isresident,:p_country,:p_firstdate,:p_limitdate,:p_birthday)');

     Zapros.Parameters.ParamByName('p_name').Value:=buferClientRecord.Name;
     Zapros.Parameters.ParamByName('p_dType').Value:=buferClientRecord.dType;
     Zapros.Parameters.ParamByName('p_ser').Value:=buferClientRecord.ser;
     Zapros.Parameters.ParamByName('p_num').Value:=buferClientRecord.num;
     Zapros.Parameters.ParamByName('p_info').Value:=buferClientRecord.info;
     Zapros.Parameters.ParamByName('p_adres').Value:=buferClientRecord.adres;
     Zapros.Parameters.ParamByName('p_isresident').Value:=buferClientRecord.isresident;
     Zapros.Parameters.ParamByName('p_Country').Value:=buferClientRecord.Country;
     Zapros.Parameters.ParamByName('p_firstdate').Value:=buferClientRecord.firstdate;
     Zapros.Parameters.ParamByName('p_limitdate').Value:=buferClientRecord.limitdate;
     Zapros.Parameters.ParamByName('p_birthday').Value:=buferClientRecord.birthday;

     result:=Zapros.ExecSQL;  // колво обработаніх записей


   Zapros.Close;
   zapros.Free;

//end; //if
end;


function TMysqlOpkas.Connect:Boolean;
begin

    with  MysqlConnection do
    begin
        LoginPrompt:=False;
        ConnectionString:=CONNECTION_STRING;
//              'Provider=MSDASQL.1;Persist Security Info=True;Extended Properties="Driver=MySQL ODBC 5.3 ANSI Driver;SERVER=91.195.75.20;UID=nikolll77;PWD=OK!@34ufgnikolll77;DATABASE=OpkasUFG;PORT=3306;NO_PROMPT=1;AUTO_RECONNECT=1;COLUMN_SIZE_S32=1"';
        Open;
    end;
    Result:=MysqlConnection.connected;
end;

Constructor TMysqlOpkas.create();
begin
//    connected:=false;
    MysqlConnection:=TADOConnection.Create(nil);
    MysqlConnection.ConnectionTimeout:=5;
//    MysqlConnection.OnConnectComplete:=onConnect;
//    MysqlConnection.OnDisconnect:=onDisconnect;
    c_NullDate:=0;
end;

Destructor TMysqlOpkas.destroy();
begin
  MysqlConnection.Close;
  MysqlConnection.Free;
end;


{function TMysqlOpkas.Clients_Sinchro(LocalClients: TADOQuery):integer;
var
buferClientRecord: TbuferClientRecord;
i:integer;
begin
result:=-1;
If connected then
begin
   ProgressFrm.show;
   i:=0;
   LocalClients.First;
   while not LocalClients.Eof do
   begin
       currClientToBufer(LocalClients,buferClientRecord);
       if GetClientId(buferClientRecord)=-1 then
           insertClientRecord(buferClientRecord);
     i:=i+1;
     ProgressFrm.Label1.Caption:=IntToStr(i);
     Application.ProcessMessages;
     LocalClients.Next;
   end;
end;
end;}


function TMysqlOpkas.GetClientId_Sinchro(buferClientRecord: TbuferClientRecord):integer;
var
Cl_Id:integer;
begin
result:=-1;
//If connected then begin
   Cl_Id:=GetClientId(buferClientRecord);
   if Cl_Id=-1 then
   begin
      insertClientRecord(buferClientRecord);
      Cl_Id:=GetClientId(buferClientRecord);
   end;
   result:=Cl_Id;
//end;
end;


function TMysqlOpkas.CheckOnlineOpKassId(localOpkasId:integer):integer;
var
  zapros:TADOQuery;
begin
   result:=-1;
   Zapros:=TADOQuery.Create(nil);
   Zapros.Connection:=MysqlConnection;
   Zapros.SQL.Add('select id from OPKASSI where id='+IntToStr(localOpkasId));
   zapros.Open;

   if not zapros.IsEmpty then
   begin
     if zapros['id']<>null then result:=zapros['id'];
   end;

   Zapros.Close;
   Zapros.Free;
end;

function TMysqlOpkas.GetOpKassIdbyVolume(volume:string):integer;
var
  zapros:TADOQuery;
begin
   result:=-1;
   Zapros:=TADOQuery.Create(nil);
   Zapros.Connection:=MysqlConnection;
   Zapros.SQL.Add('select id from OPKASSI where volume="'+volume+'"');
   zapros.Open;

   if not zapros.IsEmpty then
   begin
     if zapros['id']<>null then result:=zapros['id'];
   end;

   Zapros.Close;
   Zapros.Free;
end;

function TMysqlOpkas.getLastOpkasID:integer;
var
  zapros:TADOQuery;
begin
   result:=-1;
   Zapros:=TADOQuery.Create(nil);
   Zapros.Connection:=MysqlConnection;
   Zapros.SQL.Add('select max(id) as id from OPKASSI');
   zapros.Open;

   if not zapros.IsEmpty then
   begin
     if zapros['id']<>null then result:=zapros['id'];
   end;

   Zapros.Close;
   Zapros.Free;
end;



function TMysqlOpkas.insertOpKass(opkassRecord:TOpKassRecord):integer;
var
  zapros:TADOQuery;
begin
result:=-1;

   Zapros:=TADOQuery.Create(nil);
   Zapros.Connection:=MysqlConnection;
   Zapros.Parameters.Clear;

  Zapros.SQL.Add('INSERT INTO OPKASSI(volume,name,adres,kassa) ');
  Zapros.SQL.Add('VALUES (:p_volume,:p_name,:p_adres,:p_kassa)');
     Zapros.Parameters.ParamByName('p_volume').Value:=opkassRecord.volume;
     Zapros.Parameters.ParamByName('p_name').Value:=opkassRecord.name;
     Zapros.Parameters.ParamByName('p_adres').Value:=opkassRecord.adres;
     Zapros.Parameters.ParamByName('p_kassa').Value:=opkassRecord.kassa;
     result:=Zapros.ExecSQL;  // колво обработаніх записей

   Zapros.Close;
   zapros.Free;

end;



end.
