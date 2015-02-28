unit ProcessForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TProcessFrm = class(TForm)
    StatusBar1: TStatusBar;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProcessFrm: TProcessFrm;

implementation

{$R *.dfm}

procedure TProcessFrm.BitBtn1Click(Sender: TObject);
begin
close;
end;

end.
