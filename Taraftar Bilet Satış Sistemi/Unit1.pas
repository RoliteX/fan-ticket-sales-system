unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, System.UITypes;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit5;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  if (MessageDlg('Uygulamadan çýkýþ yapmak istediðinize emin misiniz?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes) then Application.Terminate;
end;

end.
