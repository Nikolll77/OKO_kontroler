unit mainunit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, MySqlOpkas,ModuleReports, Vcl.ComCtrls,
  Data.DB, Data.Win.ADODB;

type
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
    procedure FormCreate(Sender: TObject);
    procedure menu_db_connectClick(Sender: TObject);
    procedure menu_DB_disconnectClick(Sender: TObject);
    procedure menu_OV_zvitnaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataBase:TMySqlOpkas;
    Reports:TOpkassReports;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses zvitnadovidka;


procedure TMainForm.FormCreate(Sender: TObject);
begin
DataBase:=TMySqlOpkas.create;
reports:=TOpkassReports.create(DataBase);
menu_db_connect.Click;
end;

procedure TMainForm.menu_db_connectClick(Sender: TObject);
begin
if DataBase.Connect then StatusBar1.Panels[0].Text:='Зъеднано!'
                    else StatusBar1.Panels[0].Text:='Немає зв"язку!';

end;

procedure TMainForm.menu_DB_disconnectClick(Sender: TObject);
begin
//Database.disconnect;

end;

procedure TMainForm.menu_OV_zvitnaClick(Sender: TObject);
begin
Application.CreateForm(TFormZvitnaDovidka, FormZvitnaDovidka);
FormZvitnaDovidka.show;
end;

end.
