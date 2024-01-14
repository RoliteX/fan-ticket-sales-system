unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
  if (MessageDlg('Se�ti�iniz bilete iade i�lemi uygulanacakt�r, emin misiniz?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes) then
    begin
      ShowMessage('Se�ti�iniz biletin iade talebi ger�ekle�mi�tir. 2-3 i� g�n� i�erisinde ki�iye geri �deme yap�lacakt�r.');
      Form3.ADOTable1.Delete;
    end;

end;

procedure TForm6.SpeedButton2Click(Sender: TObject);
begin
  Form3.ADOTable1.Edit;
  Form3.ADOTable1.Post;
end;

end.
