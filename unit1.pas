unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Windows;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowWindow(FindWindowEx(0, 0, MAKEINTATOM($C017), 'Start'), SW_HIDE);
  ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOW);
  ShowWindow(FindWindowEx(0, 0, MAKEINTATOM($C017), 'Start'), SW_SHOW);
end;

end.

