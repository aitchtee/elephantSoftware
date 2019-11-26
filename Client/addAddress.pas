unit addAddress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfmAddAddress = class(TForm)
    lbStreet: TLabel;
    lbBuilding: TLabel;
    eStreet: TEdit;
    eBuilding: TEdit;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    eFlat: TEdit;
    lbFlat: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure eStreetChange(Sender: TObject);
    procedure eFlatKeyPress(Sender: TObject; var Key: Char);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAddAddress: TfmAddAddress;

implementation

{$R *.dfm}

uses dm;



procedure TfmAddAddress.btnOkClick(Sender: TObject);
begin
//  dmMy.DCOMConnection1.AppServer.smUpdateAddress(0,
//        fmAddAddress.eStreet.Text,
//        fmAddAddress.eBuilding.Text,
//        StrToFloat(fmAddAddress.eFlat.Text));
end;

procedure TfmAddAddress.eFlatKeyPress(Sender: TObject; var Key: Char);
const Digit: set of Char=['0'..'9'];
begin
  if (not(Key in Digit))
       then Key:=#0;
end;

procedure TfmAddAddress.eStreetChange(Sender: TObject);
var i: integer;
begin
  btnOk.Enabled := True;
  for i := 0 to ComponentCount - 1 do
  if Components[i] is TEdit then
      btnOk.Enabled := btnOk.Enabled and ((Components[i] as TEdit).Text<>'');
end;

procedure TfmAddAddress.FormActivate(Sender: TObject);
var i : integer;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[i] is TEdit then
      (Components[i] as TEdit).Text :='';
    btnOk.Enabled := False;


end;

end.
