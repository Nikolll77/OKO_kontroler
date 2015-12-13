unit FrameFilterKassa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFramFilterKassa = class(TFrame)
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Label12: TLabel;
    Edit4: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    function getFilter:string;
  end;

implementation

{$R *.dfm}

function TFramFilterKassa.getFilter:string;
var
fltr:string;
begin
  fltr:='1=1 ';

  if Edit1.Text<>'' then  fltr:=fltr+' and code like"%'+Edit1.Text+'%"';
  if Edit2.Text<>'' then  fltr:=fltr+' and name like"%'+Edit2.Text+'%"';
  if Edit3.Text<>'' then  fltr:=fltr+' and address like"%'+Edit3.Text+'%"';
  if Edit4.Text<>'' then  fltr:=fltr+' and filiya='+Edit4.Text;

result:=fltr;
end;

end.
