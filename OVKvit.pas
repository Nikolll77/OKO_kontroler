unit OVKvit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, frxClass,
  frxDBSet, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,MySQLOpkas;
type tKvit = record
      val           : string;
      val2          : string;
      summa         : real;
      kurs          : real;
      kvit          : integer;
      sumuah        : real;
      komis         : real;
   end;

   type tClients = record
      FIO           : string;
      Serie         : string;
      Number        : string;
      docum         : string;
      Country       : string;
      Adress        : string;
      Info          : string;
      Resident      : boolean;
      begdate       : Tdate;
      enddate       : Tdate;
      birth         : Tdate;
      inkod         : string;
   end;
type
  TfrmOvKvit = class(TForm)
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    BitBtn1: TBitBtn;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MyRound(x:double):double;
    function ConvertDate(d : tDate; t : tTime; time : boolean) : string;
    procedure ConvertDig2StrCurrency(minput: string; var output: string; abr, abr1 : string);
    procedure MakeKvit(typ:integer; t:TKvit; c:tClients; opdate:Tdate; optime:TTime;shw:boolean);
  end;

var
  frmOvKvit: TfrmOvKvit;

implementation

{$R *.dfm}

uses mainunit;

procedure TfrmOvKvit.BitBtn1Click(Sender: TObject);
begin
DataSource2.DataSet:=MainForm.DataBase.getOVList(DataSource1.DataSet['id'],DateTimePicker1.Date);
DataSource2.DataSet.filter:='kvit<>0';
DataSource2.DataSet.Filtered:=true;
end;

procedure TfrmOvKvit.BitBtn2Click(Sender: TObject);
const
      OV_COMIS=0.02;
var
  Zapros:TDataset;

   s,tmp,tms,ss,ss1,str,hh1,hh2 : string;
   nn:integer;
  // order,OrderInfo              : tOrder;
   sumuah                       : real;
   optyp                        : integer;
   optime                       : TTime;
   opdate                       : Tdate;
   ClientInfo                   : tClients;
   KvitInfo                     : tKvit;

   clnt:TbuferClientRecord;
   clntid:integer;
begin
  Zapros:=DataSource2.DataSet;
  if ((Zapros['oper']=1)or(Zapros['oper']=2))and(Zapros['kvit']>0)and(Zapros['kassa']=2) then
   begin
      optyp:=Zapros['oper'];
      opdate:=Zapros['operdata'];
      optime:=Zapros['operdata'];
      KvitInfo.kvit:=Zapros['kvit'];
      KvitInfo.kurs:=Zapros['rate'];
      if optyp=2 then
      begin
         KvitInfo.val :='UAH';
         KvitInfo.val2 :=Zapros['currency'];
         KvitInfo.summa:=Zapros['sumUAH'];
         KvitInfo.sumuah :=Zapros['sum'];

         //15.06.2015
         KvitInfo.komis:=0;
         if (Zapros['notate']=null) or (Zapros['notate']='') then
           KvitInfo.komis:=myround(KvitInfo.summa/(OV_COMIS+1)*OV_COMIS);
         //---
      end else begin
                  KvitInfo.val :=Zapros['currency'];
                  KvitInfo.val2 :='UAH';
                  KvitInfo.sumuah :=Zapros['sumUAH'];
                  KvitInfo.summa :=Zapros['sum'];

               end;

     clntid:=DataSource2.DataSet['clients_id'];
     clnt:=MainForm.DataBase.getClientByID(DataSource2.DataSet['clients_id']);

      if clntid>0  then
      begin
         clnt:=MainForm.DataBase.getClientByID(DataSource2.DataSet['clients_id']);
         ClientInfo.FIO :=clnt.Name;

            ClientInfo.Adress :=clnt.adres;
            ClientInfo.Serie :=clnt.ser;
            ClientInfo.Number :=clnt.num;
            ClientInfo.docum :=clnt.dType;
            try
               tmp:= datetostr(ClientInfo.begdate);
               if tmp='30.12.1899' then tmp:=''
            except
               tmp:='';
            end;
            ClientInfo.Info :=clnt.info + ' '+tmp;
        
      end else begin
                  ClientInfo.docum :='ѕаспорт громад€нина ”крањни';
                  ClientInfo.FIO :=Zapros['dopinfo'];
                  ClientInfo.Serie :='';
                  ClientInfo.Number :='';
                  ClientInfo.Info :='';
               end;
      MakeKvit(optyp,KvitInfo,ClientInfo,opdate,optime,false);
   end;
end;
procedure TfrmOvKvit.MakeKvit(typ:integer; t:TKvit; c:tClients; opdate:Tdate; optime:TTime;shw:boolean);
var
   tmp,s,pens   : string;
   period  : integer;
   pn: real;
Begin
   case typ of
      1   : frxReport1.Script.Variables['nameoper']:=' уп≥вл€ ≥ноземноњ валюти';
      2,4 : frxReport1.Script.Variables['nameoper']:='ѕродаж ≥ноземноњ валюти';
      3   : frxReport1.Script.Variables['nameoper']:=' онвертац≥€ ≥ноземноњ валюти';
   end;
   frxReport1.Script.Variables['dt']:=ConvertDate(opdate,opdate, false);
   frxReport1.Script.Variables['ttime']:=opdate;

   frxReport1.Script.Variables['filia']:=datasource1.dataset['name'];//Main.idSettings.ReadString('UnitInfo', 'Name', '');
   frxReport1.Script.Variables['Adres']:=datasource1.dataset['adres'];//Main.idSettings.ReadString('UnitInfo', 'Adres', '');
   //16062014
   //DataModule1.frxReport1.Script.Variables['Organization']:=Main.idSettings.ReadString('UnitInfo', 'Name', '')+', '+Main.idSettings.ReadString('UnitInfo', 'Adres', '');

   frxReport1.Script.Variables['CLIENT']:=c.FIO;

   frxReport1.Script.Variables['docum']:=c.docum;
   frxReport1.Script.Variables['passer']:=c.Serie;
   frxReport1.Script.Variables['pasnum']:=c.Number;

   //16062014
   //DataModule1.frxReport1.Script.Variables['Passport']:= c.docum+' '+c.Serie+c.Number;

   if datetostr(c.begdate)='30.12.1899' then tmp:='' else tmp:= datetostr(c.begdate);
   frxReport1.Script.Variables['vidan']:=c.Info + ' '+tmp;
   if c.Resident=true then frxReport1.Script.Variables['resident']:='–езидент'
   else frxReport1.Script.Variables['resident']:='Ќерезидент';
   frxReport1.Script.Variables['Adress']:=c.Adress;
   frxReport1.Script.Variables['kod']:=c.inkod;

   frxReport1.Script.Variables['Val']:=t.val;
   frxReport1.Script.Variables['Val2']:=t.val2;
   frxReport1.Script.Variables['Summa']:=t.summa;
   frxReport1.Script.Variables['Sumuah']:=t.sumuah;
   //20062014
   frxReport1.Script.Variables['pension']:='';
   if typ=2 then
   begin
      //pn:=MyRound(t.summa-t.summa/(1+0.02));   // коеффииент еще добавл€етс€ в квитанции
      pn:=MyRound(t.komis);
      ConvertDig2StrCurrency(FloatToStr(pn),pens, 'грн.', 'коп.');
      frxReport1.Script.Variables['pension']:='—ума сплаченого збору на обов'''+'€зкове державне пенс≥йне страхуванн€ '+Floattostr(pn)+' ('+pens+')';
   end;
   //16062014
   //DataModule1.frxReport1.Script.Variables['Sum1']:=t.val+' '+floattostr(t.summa);
   //DataModule1.frxReport1.Script.Variables['Sum2']:=t.val2+' '+floattostr(t.sumuah);

   frxReport1.Script.Variables['kvit']:=t.kvit;
   frxReport1.Script.Variables['kurs']:=t.kurs;
   frxReport1.LoadFromFile('templates\k377new.fr3');

   if opdate<strtodate('02.09.2012') then
   begin
      period:=1;
      frxReport1.LoadFromFile('templates\k377old.fr3');
   end else if opdate<strtodate('01.01.2013') then
            begin
               period:=2;
               frxReport1.LoadFromFile('templates\k377.fr3');
               //if Main.idSettings.ReadBool('UnitInfo', 'newkvit', False)=true then datamodule1.frxReport1.LoadFromFile('templates\k377w.fr3');
            end else period:=3;
   if (period=1)and(typ=1) then
   begin
      frxReport1.Script.Variables['docum']:=c.docum;
      frxReport1.Script.Variables['passer']:='_____';
      frxReport1.Script.Variables['pasnum']:='____________________';
      frxReport1.Script.Variables['vidan']:='';
      if c.Resident=true then frxReport1.Script.Variables['resident']:='–езидент'
      else frxReport1.Script.Variables['resident']:='Ќерезидент';
   end;
   if (period=2)and(typ=1) then
   begin
      frxReport1.Script.Variables['docum']:='______________________________';
      frxReport1.Script.Variables['passer']:='_____';
      frxReport1.Script.Variables['pasnum']:='____________________';
      frxReport1.Script.Variables['vidan']:='';
      frxReport1.Script.Variables['resident']:='';
   end;
   if (((t.summa<=50000)and(typ=2))or((t.sumuah<=50000)and(typ=1)))and(period=3) then
   begin
      frxReport1.Script.Variables['Adress']:='';
      frxReport1.Script.Variables['kod']:='';
//      DataModule1.frxReport1.Script.Variables['docum']:='______________________________';
//      DataModule1.frxReport1.Script.Variables['passer']:='_____';
//      DataModule1.frxReport1.Script.Variables['pasnum']:='____________________';
      frxReport1.Script.Variables['vidan']:='';
      frxReport1.Script.Variables['resident']:='';
   end;

  { if shw=false then
   begin
      if frxReport1.PrepareReport then frxReport1.Print;
   end else begin
               s := GetCurrentDir;     }
               frxReport1.ShowReport;
              { SetCurrentDir(s);
            end;   }
End;

function TfrmOvKvit.MyRound(x:double):double;
var
   s : string;
Begin
   s:=FloattoStr(x);
   if (pos(',',s)<>0) then
   begin
      s:=copy(s,1,pos(',',s)+3);
      if (pos(',',s)+2)>=length(s) then Result:=x
      else begin
              s:=copy(s,1,pos(',',s)+3);
              if strtoint(s[length(s)])>=5 then
              Result:=strtofloat(copy(s,1,length(s)-1))+0.01
              else Result:=strtofloat(copy(s,1,length(s)-1));
           end;
   end else Result:=x;
End;

procedure TfrmOvKvit.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date:=Date;
DataSource1.DataSet:=MainForm.DataBase.getOVOpkasList;
end;

function TfrmOvKvit.ConvertDate(d : tDate; t : tTime; time : boolean) : string;
const
   months : array[1..12] of string[20] = ('сiчн€','лютого','березн€','квiтн€','травн€','червн€','липн€','серпн€','вересн€','жовтн€','листопада','грудн€');
var
   year, month, day     : word;
   hour, min, sec, msec : word;
   h, m                 : string;
begin
   DecodeDate(D,year,month,day);
   if time = true then begin
      DecodeTime(t, hour, min, sec, msec);
      h := IntToStr(hour);
      m := IntTostr(min);
      if Length(h) = 1 then System.Insert('0', h, 1);
      if Length(m) = 1 then Insert('0', m, 1);
      ConvertDate := '"' + IntToStr(day) + '" ' + months[month] + ' ' + IntToStr(year) + ' р.  ' + h + ':' + m;
   end else
   begin
      ConvertDate := '"' + IntToStr(day) + '" ' + months[month] + ' ' + IntToStr(year)+ ' р.';
   end;
end;

procedure TfrmOvKvit.ConvertDig2StrCurrency(minput: string; var output: string; abr, abr1 : string);
const
    ed         : array[0..9] of string[15] = ('', 'один', 'два', 'три', 'чотири', 'п"€ть', 'шiсть', 'сiм', 'вiсiм', 'дев"€ть');
    des        : array[0..9] of string[15] = ('','дес€ть', 'двадц€ть', 'тридц€ть', 'сорок', 'п"€тдес€т', 'шiстьдес€т', 'сiмдес€т', 'вiсiмдес€т', 'дев"€носто');
    sot        : array[0..9] of string[15] = ('','сто', 'двiстi', 'триста', 'чотириста', 'п"€тсот', 'шiстсот', 'сiмсот', 'вiсiмсот', 'дев"€тсот');
    tis        : array[0..9] of string[15] = ('', 'одна тис€ча', 'двi тис€чi', 'три тис€чi', 'чотири тис€чi', 'п"€ть тис€ч', 'шiсть тис€ч', 'сiм тис€ч', 'вiсiм тис€ч', 'дев"€ть тис€ч');
    tisother   : array[0..19] of string[20] = ('тис€ч','тис€ч','тис€ч','тис€ч','тис€ч','тис€ч','тис€ч','тис€ч','тис€ч','тис€ч','дес€ть тис€ч', 'одинадц€ть тис€ч', 'дванадц€ть тис€ч', 'тринадц€ть тис€ч', 'чотирнадц€ть тис€ч', 'п"€тнадц€ть тис€ч', 'шiстнадц€ть тис€ч', 'сiмнадц€ть тис€ч', 'вiсiмнадц€ть тис€ч','дев"€тнадц€ть тис€ч');
    other      : array[10..19] of string[15] = ('дес€ть', 'одинадц€ть', 'дванадц€ть', 'тринадц€ть', 'чотирнадц€ть', 'п"€тнадц€ть', 'шiстнадц€ть', 'сiмнадц€ть', 'вiсiмнадц€ть','дев"€тнадц€ть');
    mil        : array[0..9] of string[15] = ('', 'один мiльйон', 'два мiльйони', 'три мiльйони', 'чотири мiльйони', 'п"€ть мiльйонiв', 'шiсть мiльйонiв', 'сiм мiльйонiв', 'вiсiм мiльйонiв', 'дев"€ть мiльйонiв');
var afterzap   : string;
    temp,temp1 : byte;
    tempnum    : integer;
    code       : integer;
    input      : string;
begin
   input := FloatToStr(MyRound(StrToFloat(minput)));
   output := '';
   temp := pos('.',input);
   temp1 := pos(',',input);
   afterzap := '00';
   if (temp<>0) or (temp1<>0) then
   begin
      if temp<>0 then
      begin
         afterzap := Copy(input, temp+1, Length(input)-temp+1);
         Delete(input,temp,Length(input)-temp+1);
      end
      else begin
             afterzap := Copy(input, temp1+1, Length(input)-temp1+1);
             Delete(input,temp1,Length(input)-temp1+1);
           end;
   end;
   if Length(afterzap) = 1 then afterzap := afterzap + '0';
      if (input <> '0') and (input<>'') then
      begin
          case Length(input) of
          1 : begin
                 tempnum := StrToInt(input);
                 if (pos('грн',abr)<>0)and(tempnum=1) then output :='одна'
                 else if (pos('грн',abr)<>0)and(tempnum=2) then output :='дв≥'
                      else output := ed[tempnum];
              end;
          2 : begin
                 tempnum := StrToInt(input);
                 if tempnum < 20 then
                 begin
                    output := other[tempnum];
                 end else begin
                             output := output + des[tempnum div 10] + ' ' + ed[tempnum mod 10 ];
                          end;
              end;
          3 : begin
                 tempnum := StrToInt(input);
                 output := output + sot[tempnum div 100];
                 if (tempnum mod 100 < 20) and ((tempnum div 10) mod 10 <> 0) then
                 begin
                    output := output + ' ' + other[tempnum mod 100]
                 end else begin
                             tempnum := tempnum mod 100;
                             output := output + ' ' + des[tempnum div 10];
                             output := output + ' ' + ed[tempnum mod 10];
                          end;
              end;
          4 : begin
                 tempnum := StrToInt(input);
                 output := output + tis[tempnum div 1000] + ' ';
                 tempnum := tempnum mod 1000;
                 output := output + sot[tempnum div 100];
                 if (tempnum mod 100 < 20) and ((tempnum div 10) mod 10 <> 0) then
                 begin
                    output := output + ' ' + other[tempnum mod 100]
                 end else begin
                             tempnum := tempnum mod 100;
                             output := output + ' ' + des[tempnum div 10];
                             output := output + ' ' + ed[tempnum mod 10];
                          end;
              end;
          5 : begin
                 tempnum := StrToInt(input);
                 tempnum := tempnum div 1000;
                 if tempnum < 20 then
                 begin
                    output := tisother[tempnum] + ' ';
                 end else begin
                             if tempnum mod 10 <> 0 then
                                output := output + des[tempnum div 10] + ' ' + tis[tempnum mod 10] + ' '
                             else output := output + des[tempnum div 10] + ' тис€ч ';
                          end;
                 val(input,tempnum,code);
                 tempnum := tempnum mod 1000;
                 output := output + sot[tempnum div 100];
                 if (tempnum mod 100 < 20) and ((tempnum div 10) mod 10 <> 0) then
                 begin
                     output := output + ' ' + other[tempnum mod 100]
                 end else begin
                             tempnum := tempnum mod 100;
                             output := output + ' ' + des[tempnum div 10];
                             output := output + ' ' + ed[tempnum mod 10];
                          end;
              end;
          6 : begin
                 tempnum := StrToInt(input);
                 tempnum := tempnum div 1000;
                 output := output + sot[tempnum div 100];
                 if (tempnum mod 100 < 20) and ((tempnum div 10) mod 10 <> 0) then
                 begin
                    output := output + ' ' + tisother[tempnum mod 100] + ' ';
                 end else begin
                    tempnum := tempnum mod 100;
                    output := output + ' ' + des[tempnum div 10];
                    if tempnum mod 10 <> 0 then
                       output := output + ' ' + ed[tempnum mod 10] + ' тис€ч '
                    else output := output + ' тис€ч '
                 end;
                 val(input,tempnum,code);
                 tempnum := tempnum mod 1000;
                 output := output + sot[tempnum div 100];
                 if (tempnum mod 100 < 20) and ((tempnum div 10) mod 10 <> 0) then
                 begin
                    output := output + ' ' + other[tempnum mod 100]
                 end else begin
                             tempnum := tempnum mod 100;
                             output := output + ' ' + des[tempnum div 10];
                             output := output + ' ' + ed[tempnum mod 10];
                          end;
              end;
          7 : begin
                 tempnum := StrToInt(input);
                 output := mil[tempnum div 1000000] + ' ';
                 tempnum := tempnum mod 1000000;
                 code := tempnum;
                 tempnum := tempnum div 1000;
                 output := output + sot[tempnum div 100];
                 if (tempnum mod 100 < 20) and ((tempnum div 10) mod 10 <> 0) then
                 begin
                    output := output + ' ' + tisother[tempnum mod 100] + ' ';
                 end else begin
                             tempnum := tempnum mod 100;
                             output := output + ' ' + des[tempnum div 10];
                             if tempnum mod 10 <>0 then output := output + ' ' + ed[tempnum mod 10] + ' тис€ч '
                             else output := output + ' тис€ч ';
                          end;
                 tempnum := code;
                 tempnum := tempnum mod 1000;
                 output := output + sot[tempnum div 100];
                 if (tempnum mod 100 < 20) and ((tempnum div 10) mod 10 <> 0) then
                 begin
                    output := output + ' ' + other[tempnum mod 100]
                 end else begin
                             tempnum := tempnum mod 100;
                             output := output + ' ' + des[tempnum div 10];
                             output := output + ' ' + ed[tempnum mod 10];
                          end;
              end;
         end;
         output := output + ' ' + abr + ' ' + afterzap + ' ' + abr1;
    end else output := 'нуль' + ' ' + abr + ' ' + afterzap + ' ' + abr1;
        output[1] := chr(ord(output[1])-32)
end;

end.
