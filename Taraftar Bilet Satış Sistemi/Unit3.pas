unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg;

type
  TForm3 = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Button4: TButton;
    DBEdit2: TDBEdit;
    DBText2: TDBText;
    Label6: TLabel;
    Image1: TImage;
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm3.Button2Click(Sender: TObject);
begin
  ADOTable1.Edit;
  ADOTable1.Post;
  DBCheckBox1.Enabled := false;
  DBEdit1.Enabled := false;
  Button3.Enabled := false;
  DBEdit2.Enabled := false;
  Button2.Enabled := false;
  ShowMessage('Bilet alým iþleminiz baþarýyla gerçekleþtirilmiþtir.');
  Form3.Hide;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if (DBEdit1.Text = '') then ShowMessage('Koltuk Numarasý boþ býrakýlamaz!');
  Button2.Enabled := true;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  ADOTable1.Insert;
  DBCheckBox1.Enabled := true;
  DBEdit1.Enabled := true;
  Button3.Enabled := true;
  DBEdit2.Enabled := true;
  DBText2.Caption := Form2.ADOTable1.FieldByName('BiletUcret').AsString;
  ADOTable1.FieldByName('BiletUcreti').AsString := Form2.ADOTable1.FieldByName('BiletUcret').AsString;
end;

procedure TForm3.Label6Click(Sender: TObject);
begin
  ShowMessage('Bilet almak isteyen kiþi eðer ülke çapýnda yetkili veya ülke çapýnda tanýnýrlýða sahipse bu alan iþaretlenmelidir.');
end;

end.
