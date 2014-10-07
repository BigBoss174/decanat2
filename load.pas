unit load;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, jpeg;

type
  TLoading = class(TForm)
    Image1: TImage;
    Panel2: TPanel;
    Image3: TImage;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Loading: TLoading;
   hMutex : THandle;

implementation

uses uLogin, uMain;

{$R *.dfm}

procedure TLoading.FormCreate(Sender: TObject);
begin
if WaitForSingleObject(hMutex, 0)<>0 then
  begin
    ShowMessage('Программа уже запущена');

    Application.Terminate;

  end;
end;

procedure TLoading.Timer1Timer(Sender: TObject);
begin
Loading.close;
end;
    initialization
  hMutex := CreateMutex(nil, True, PChar(ExtractFileName(Application.ExeName)));
  // Вместо ExtractFileName(Application.ExeName) что-нибудь более уникальное
finalization
  CloseHandle(hMutex);

end.
