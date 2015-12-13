unit mainunit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, MySqlOpkas,ModuleReports, Vcl.ComCtrls,
  Data.DB, Data.Win.ADODB,formAdm;

type
  TMode = (modeOV,modeALL);

  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    menu_reports: TMenuItem;
    menu_OV_zvitna: TMenuItem;
    menu_OV: TMenuItem;
    menu_DB: TMenuItem;
    menu_db_connect: TMenuItem;
    menu_DB_disconnect: TMenuItem;
    N5: TMenuItem;
    StatusBar1: TStatusBar;
    ADOConnection1: TADOConnection;
    Menu_OV_limitscheck: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure menu_db_connectClick(Sender: TObject);
    procedure menu_DB_disconnectClick(Sender: TObject);
    procedure menu_OV_zvitnaClick(Sender: TObject);
    procedure Menu_OV_limitscheckClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataBase:TMySqlOpkas;
    Reports:TOpkassReports;

    function ConvertDate(d : tDate; t : tTime; time : boolean) : string;

  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses zvitnadovidka, LimitsCheck, zapClientCountOper, OpersByClientForm,
  zvitnaOstatok;

procedure TMainForm.FormCreate(Sender: TObject);
begin
DataBase:=TMySqlOpkas.create;
reports:=TOpkassReports.create(DataBase);
menu_db_connect.Click;

  Application.HintPause:=10;
  Application.HintColor:=clLime;
end;

procedure TMainForm.menu_db_connectClick(Sender: TObject);
begin
if DataBase.Connect then StatusBar1.Panels[0].Text:='Зъеднано!'
                    else StatusBar1.Panels[0].Text:='Немає зв"язку!';

end;

procedure TMainForm.menu_DB_disconnectClick(Sender: TObject);
begin
Database.MysqlConnection.Connected:=false;

end;

procedure TMainForm.Menu_OV_limitscheckClick(Sender: TObject);
begin
frmLimitsCheck.show;
end;

procedure TMainForm.menu_OV_zvitnaClick(Sender: TObject);
begin
Application.CreateForm(TFormZvitnaDovidka, FormZvitnaDovidka);
FormZvitnaDovidka.show;
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
Application.CreateForm(TfrmZvitnaOstatok, FrmZvitnaOstatok);
frmZvitnaOstatok.show;
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
  Application.CreateForm(TfrmAdm,frmAdm);
  frmAdm.show;

end;

procedure TMainForm.N4Click(Sender: TObject);
begin
Application.CreateForm(TKlientsCountOper,KlientsCountOper);
KlientsCountOper.mode:=modeALL;
KlientsCountOper.show;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  Application.CreateForm(TKlientsCountOper,KlientsCountOper);
  KlientsCountOper.mode:=modeOV;
  KlientsCountOper.show;
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
  Application.CreateForm(TfrmOpersByClient,frmOpersByClient);
  frmOpersByClient.mode:=modeOV;
  frmOpersByClient.show;
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
  Application.CreateForm(TfrmOpersByClient,frmOpersByClient);
  frmOpersByClient.mode:=modeALL;
  frmOpersByClient.show;
end;

function TMainForm.ConvertDate(d : tDate; t : tTime; time : boolean) : string;
const
   months : array[1..12] of string[20] = ('січня','лютого','березня','квітня','травня','червня','липня','серпня','вересня','жовтня','листопада','грудня');
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

end.
