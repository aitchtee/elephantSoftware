unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmMenu = class(TForm)
    dbgMenu: TDBGrid;
    dsMenu: TDataSource;
    MainMenu1: TMainMenu;
    miDrinks: TMenuItem;
    miDesserts: TMenuItem;
    miFirstCourse: TMenuItem;
    btnChoose: TButton;
    Panel1: TPanel;
    miSecondCourse: TMenuItem;
    lbQuantity: TLabel;
    edQuantity: TEdit;
    miAllMenu: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edQuantityChange(Sender: TObject);
    procedure miAllMenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMenu: TfmMenu;

implementation

{$R *.dfm}

uses dm;

procedure TfmMenu.edQuantityChange(Sender: TObject);
begin
  if edQuantity.Text <> '' then
  begin
    try
      StrToInt(edQuantity.Text);
      btnChoose.Enabled := (edQuantity.Text <> '');
    except
      btnChoose.Enabled := false;
    end;
  end
  else btnChoose.Enabled := false;
end;

procedure TfmMenu.FormActivate(Sender: TObject);
begin
  //dsMenu.DataSet := dmMy.cdsMenu;
  fmMenu.Width := 580;
  fmMenu.Top := 200;
  fmMenu.Left := 400;
  btnChoose.Left := fmMenu.Width - btnChoose.Width - 50;

  dsMenu.DataSet := {dmMy.cdsMenu} dmMy.dspMenu.DataSet;
  dsMenu.DataSet.Open;
  dbgMenu.Refresh;
end;

procedure TfmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsMenu.DataSet := nil;
end;

procedure TfmMenu.miAllMenuClick(Sender: TObject);
begin
  dsMenu.Enabled:= true;
  // ����� ����� "��� ����"
  if Sender = MainMenu1.Items[0] then
  begin
//    ShowMessage(MainMenu1.Items[0].Caption)
//    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLClear;
//    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('select * from Menu');
//    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLExecute;
//    dmMy.dspMenu.Close;
//    dmMy.cdsMenu.ProviderName := 'dspQuery';
//    dmMy.cdsMenu.Open;
    dsMenu.DataSet := {dmMy.cdsMenu} dmMy.ibtMenu;
    dsMenu.DataSet.Open;
    dbgMenu.Refresh;
  end
  // ����� ����� "������ �����"
  else if Sender = MainMenu1.Items[1] then
  begin
//    ShowMessage(MainMenu1.Items[1].Caption)
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLClear;
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('select * from Menu');
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('where CATEGORY_ID = 1');
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLExecute;
    dmMy.IBQuery1.Fields[0].DisplayName := '�';
    dmMy.IBQuery1.Fields[1].DisplayName := '������������';
    dmMy.IBQuery1.Fields[0].DisplayName := '���������';
    dmMy.IBQuery1.Fields[0].DisplayName := '����';
//    dmMy.cdsMenu.Close;
//    dmMy.cdsMenu.ProviderName := 'dspQuery';
//    dmMy.cdsMenu.Open;
    dsMenu.DataSet := {dmMy.cdsMenu} dmMy.IBQuery1;
    dsMenu.DataSet.Open;
    dbgMenu.Refresh;
  end
  // ����� ����� "������ �����"
  else if Sender = MainMenu1.Items[2] then
  begin
//    ShowMessage(MainMenu1.Items[2].Caption)
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLClear;
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('select * from Menu');
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('where CATEGORY_ID = 2');
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLExecute;
//    dmMy.cdsMenu.Close;
//    dmMy.cdsMenu.ProviderName := 'dspQuery';
//    dmMy.cdsMenu.Open;
    dsMenu.DataSet := {dmMy.cdsMenu} dmMy.IBQuery1;
    dsMenu.DataSet.Open;
    dbgMenu.Refresh;
  end
  // ����� ����� "�������"
  else if Sender = MainMenu1.Items[3] then
  begin
//    ShowMessage(MainMenu1.Items[3].Caption)
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLClear;
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('select * from Menu');
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('where CATEGORY_ID = 3');
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLExecute;
//    dmMy.cdsMenu.Close;
//    dmMy.cdsMenu.ProviderName := 'dspQuery';
//    dmMy.cdsMenu.Open;
    dsMenu.DataSet := {dmMy.cdsMenu} dmMy.IBQuery1;
    dsMenu.DataSet.Open;
    dbgMenu.Refresh;
  end
  // ����� ����� "�������"
  else if Sender = MainMenu1.Items[4] then
  begin
//    ShowMessage(MainMenu1.Items[4].Caption)
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLClear;
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('select * from Menu');
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLAddString('where CATEGORY_ID = 4');
    {dmMy.DCOMConnection1.AppServer.}dmMy.smSQLExecute;
//    dmMy.cdsMenu.Close;
//    dmMy.cdsMenu.ProviderName := 'dspQuery';
//    dmMy.cdsMenu.Open;
    dsMenu.DataSet := {dmMy.cdsMenu} dmMy.IBQuery1;
    dsMenu.DataSet.Open;
    dbgMenu.Refresh;
  end;

end;

end.
