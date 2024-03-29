unit TestServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdCustomHTTPServer, IdHTTPServer, Vcl.XPMan, Vcl.StdCtrls,
  IdContext;

type
  TfmTestServer = class(TForm)
    lbPort: TLabel;
    ePort: TEdit;
    cbPassSec: TCheckBox;
    gbServer: TGroupBox;
    eName: TEdit;
    ePass: TEdit;
    MemoServer: TMemo;
    btnStart: TButton;
    btnStop: TButton;
    btnClear: TButton;
    lbName: TLabel;
    lbPass: TLabel;
    XPManifest1: TXPManifest;
    Server: TIdHTTPServer;
    procedure btnClearClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure ServerConnect(AContext: TIdContext);
    procedure ServerDisconnect(AContext: TIdContext);
    procedure ServerCommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmTestServer: TfmTestServer;
  user : integer;
implementation

{$R *.dfm}

procedure TfmTestServer.btnClearClick(Sender: TObject);
begin
  MemoServer.Lines.Clear;
  MemoServer.Lines.Add('Server 1.0');
end;

procedure TfmTestServer.btnStartClick(Sender: TObject);
begin
  Server.DefaultPort:= StrToInt(ePort.Text);
  Server.Active:= True;

  MemoServer.Lines.Add('Status: '+DateToStr(date)+' | ' + TimeToStr(time)
      + ': Server started.');

  btnStart.Enabled:= False;
  btnStop.Enabled:= True;
  lbPort.Enabled:= False;
  ePort.Enabled:= False;

end;

procedure TfmTestServer.btnStopClick(Sender: TObject);
begin
  Server.Active:= False;

  MemoServer.Lines.Add('Status: ' + DateToStr(date)+' | ' + TimeToStr(time)
      + ': Server stopped.');

  btnStart.Enabled:= True;
  btnStop.Enabled:= False;
  lbPort.Enabled:= True;
  ePort.Enabled:= True;
end;

procedure TfmTestServer.ServerCommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  Stream: TFileStream;
  Size: String;
begin
  if (cbPassSec.Checked= True) and ((ARequestInfo.AuthUsername <> eName.Text) or (ARequestInfo.AuthPassword <> ePass.Text))
  then begin
    AResponseInfo.ContentText:= 'Username and Password request...';
    AResponseInfo.AuthRealm:= 'Scheff-Interface'; // �� ��� ���
  end
  else begin
    if ARequestInfo.Document='/' then begin
      AResponseInfo.ContentType:= 'text/html';
      Stream:= TFileStream.Create('htdocs/index.html', fmOpenRead or fmShareDenyWrite);
      AResponseInfo.ContentStream:=Stream;
      SetLength(Size, Stream.Size);
      Stream.Read(Size[1],Stream.Size);
      MemoServer.Lines.Add(DateToStr(date) + ' | '
        + TimeToStr(time) + ': Client '
        + ARequestInfo.RemoteIP + ' has the file index.html ('
        + IntToStr(round(Stream.Size / 1024))
        + ' kb ) requested.' );
    end;
  end;

end;

procedure TfmTestServer.ServerConnect(AContext: TIdContext);
begin
  user:= user + 1;
  gbServer.Caption:= 'Protocol (User: ' + IntToStr(user) + '):';
end;

procedure TfmTestServer.ServerDisconnect(AContext: TIdContext);
begin
  user:= user - 1;
  gbServer.Caption:= 'Protocol (User: ' + IntToStr(user) + '):';
end;

end.
