unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
     x, y, x1, y1: Integer; // Rectangle coordinates
    sx, sy: Integer;       // Scale factors
    procedure kotak;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.kotak;
begin
Canvas.Rectangle(x,y,x1,y1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Canvas.Pen.Color := clblue;
x := 110;
y := 110;
x1 := 150;
y1 := 150;
kotak;
end;
procedure TForm1.Button1Click(Sender: TObject);
begin
sx := StrToInt(EditSX.Text);
sy := StrToInt(EditSY.Text);
x := x * sx;
y := y * sy;
x1 := x1 * sx;
y1 := y1 * sy;
Canvas.Pen.Color := clred;
kotak;
end;
procedure TForm1.Button2Click(Sender: TObject);
begin
sx := StrToInt(EditSX.Text);
sy := StrToInt(EditSY.Text);
x := x div sx;
y := y div sy;
x1 := x1 div sx;
y1 := y1 div sy;
Canvas.Pen.Color := clBlack;
kotak;
end;
procedure TForm1.FormPaint(Sender: TObject);
begin
Canvas.Pen.Color := clblue;
x := 110;
y := 110;
x1 := 150;
y1 := 150;
kotak;
end;

end.

