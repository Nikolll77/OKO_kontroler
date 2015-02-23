unit ModuleReports;

interface
uses MySQLOpkas,SysUtils,Data.DB, Data.Win.ADODB;

type

TOpkassReports=class
 private
 DB:TMySqlOpkas;
 public
 Constructor create(_db:TMySqlOpkas);
 function ZvitnaDovidka(opkass_id:integer; oper_day:TDateTime):TADOQuery;

end;

implementation

 function TOpkassReports.ZvitnaDovidka(opkass_id:integer; oper_day:TDateTime):TADOQuery;
 begin
  // result:=db.GetOvList(opkass_id,oper_day);
 end;

 constructor TOpkassReports.create(_db:TMySqlOpkas);
 begin
   DB:=_db;
 end;

end.
