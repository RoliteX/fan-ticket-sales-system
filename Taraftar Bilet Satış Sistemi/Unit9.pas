unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm9.Button1Click(Sender: TObject);
var
 kadi, sifre : String;
begin
 kadi := Edit1.Text;
 sifre := Edit2.Text;

if (kadi = 'admin') and (sifre = '1234') then
  begin
       Form1.Show;
       Form9.Hide;
  end
else if (kadi = 'taraftar') and (sifre = 'renk') then
  begin
      Form1.Show;
      Form9.Hide;
  end
else if (kadi = 'personel') and (sifre = 'p123') then
  begin
      Form1.Show;
      Form9.Hide;
  end
else
  begin
    ShowMessage('Girilen kullanýcý adý veya þifre yanlýþ!');
  end;


end;

end.
