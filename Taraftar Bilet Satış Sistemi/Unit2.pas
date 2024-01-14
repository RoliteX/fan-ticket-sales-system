unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, System.UITypes;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit6;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  ADOTable1.Insert;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
  if (MessageDlg('Seçtiðiniz maçý silmek istediðinize emin misiniz?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes) then ADOTable1.Delete;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
  ADOTable1.Edit;
  ADOTable1.Post;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
  Form6.Show;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
  ADOTable1.First;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
  ADOTable1.Last;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
  ADOTable1.Refresh;
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
begin
  Form4.Show;
end;

end.
