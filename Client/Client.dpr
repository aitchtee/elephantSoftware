program Client;

uses
  Vcl.Forms,
  main in 'main.pas' {fmMain},
  AddOrder in 'AddOrder.pas' {fmOrder},
  test in 'test.pas' {fmTest},
  addAddress in 'addAddress.pas' {fmAddAddress},
  dm in 'dm.pas' {dmMy: TDataModule},
  Menu in 'Menu.pas' {fmMenu},
  test1 in 'test1.pas' {fmTest1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TfmOrder, fmOrder);
  Application.CreateForm(TfmTest, fmTest);
  Application.CreateForm(TfmAddAddress, fmAddAddress);
  Application.CreateForm(TdmMy, dmMy);
  Application.CreateForm(TfmMenu, fmMenu);
  Application.CreateForm(TfmTest1, fmTest1);
  Application.Run;
end.
