unit test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Data.DB, Vcl.DBCtrls, Data.Win.ADODB, Vcl.ComCtrls, Vcl.WinXPickers;

type
  TfmTest = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Edit2: TEdit;
    Panel3: TPanel;
    ScrollBox1: TScrollBox;
    ComboBox1: TComboBox;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    TimePicker1: TTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);


  private
    { Private declarations }
    procedure ClickPanel(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  public
    { Public declarations }
  end;

var
  fmTest: TfmTest;
   orderNum :integer = 0;
   dragflag: boolean;
   t : string;
   len : integer;
implementation
{$R *.dfm}

uses test1, dm;

{====================

// ����� ����� ������ ��� ������ //
//  ��� ������ �������� ����   //

====================}

procedure TfmTest.Button1Click(Sender: TObject);
var
  Panel: TPanel;
  Button: TButton;
begin   {
  orderNum:= orderNum+1;
  Panel:= TPanel.Create(fmTest.ScrollBox1);
  Panel.Parent:= fmTest.ScrollBox1;
  Panel.Align:= alTop;
  Panel.Width:= fmTest.ScrollBox1.Width;
  Panel.Height:= 100;
  Panel.Caption:= '����� � ' + IntToStr(orderNum);
  Panel.DragMode:= dmAutomatic;  }
//  t := TimeToStr(DateTimePicker1.Time);
  t := TimeToStr(TimePicker1.Time);
  len := length(t);
  Delete(t, len-2, len);
  Label1.Caption := t;
//  fmTest.Refresh;
end;



procedure TfmTest.FormActivate(Sender: TObject);
var tmp,len : integer;
s,t, res : string;
begin
{
  t := TimeToStr(DateTimePicker1.Time);
  len := length(t);
  Delete(t, len-2, len);
  Label1.Caption := t; }
end;

procedure TfmTest.FormCreate(Sender: TObject);
begin
  Panel2.Width := fmTest.Width div 2;
  Panel1.Width := fmTest.Width div 2;
  Panel3.OnMouseDown := ClickPanel;
//
////  ShowMessage(dmMy.cdsAddresses.FieldByName('STREET').AsVariant);
//
//  dmMy.DCOMConnection1.AppServer.ibtAddresses.Refresh;
//  fmTest.ComboBox1.Clear;
//  dmMy.DCOMConnection1.AppServer.ibtAddresses.First;
//  While not dmMy.DCOMConnection1.AppServer.ibtAddresses.EOF do begin
//    fmTest.ComboBox1.Items.Add(
//      dmMy.DCOMConnection1.AppServer.ibtAddresses.FieldByName('STREET').AsString);
//    dmMy.DCOMConnection1.AppServer.ibtAddresses.Next;
//  end;
//    dmMy.smDeleteOrder(4);
    //Label1.caption := dmMy.smUpdateOrder(0, 1, '', '', 4, 4, 3, Now, '', 0).ToString;
end;


procedure TfmTest.Panel1Resize(Sender: TObject);
begin
  Panel1.Width := fmTest.Width div 2;
  Panel2.Left := fmTest.Width;
  Panel2.Width := fmTest.Width div 2;
end;
//==================== DRAG-AND-DROP ====================//
procedure TfmTest.Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  TPanel(Source).Parent := TScrollBox(Sender);  // ��� ScrollBox
  TPanel(Source).Left:=X;
  TPanel(Source).Top:=Y;
  dragflag := false;
//  TPanel(Sender).Text := TPanel(Source).Text;
  TPanel(Sender).SetFocus;
//  TPanel(Sender).SelectAll;
end;

procedure TfmTest.Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   if Source is TPanel then
    Accept := True
  else
    Accept := False;
end;


procedure TfmTest.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button=mbLeft then
    TPanel(Sender).BeginDrag(True);
end;

//*******************************************************//
//=======  ��������� SCROLLBOX � ������� �������� =======//
procedure TfmTest.ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
    with ScrollBox1.VertScrollBar do
    Position:= Position + 15;
end;

procedure TfmTest.ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
    with ScrollBox1.VertScrollBar do
    Position:= Position - 15;
end;
//*******************************************************//
procedure TfmTest.ClickPanel(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
//var
//  Button: TMouseButton;
begin
//  fmTest1.ShowModal;
  if not dragflag then
    if Button=mbRight then
      fmTest1.ShowModal;
end;



end.
