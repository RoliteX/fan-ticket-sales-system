unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  Form3.ADOTable1.Insert;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
  if (MessageDlg('Bu bileti listeden silmek istediðinize emin misiniz?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes) then Form3.ADOTable1.Delete;
end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
  Form3.ADOTable1.Edit;
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
begin
  Form3.ADOTable1.Edit;
  Form3.ADOTable1.Post;
end;

end.
