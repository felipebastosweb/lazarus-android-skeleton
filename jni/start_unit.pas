{hint: Pascal files location: ...\AppSkeleton\jni }
unit start_unit;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls;
  
type

  { TStartModule }

  TStartModule = class(jForm)
    OpenRegisterButton: jButton;
    LoginButton: jButton;
    KeepConnected: jCheckBox;
    Password: jEditText;
    RegisterTextView: jTextView;
    Username: jEditText;
    procedure PasswordFocus(Sender: TObject; textContent: string);
    procedure PasswordLostFocus(Sender: TObject; textContent: string);
    procedure StartModuleCreate(Sender: TObject);
    procedure UsernameFocus(Sender: TObject; textContent: string);
    procedure UsernameLostFocus(Sender: TObject; textContent: string);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  StartModule: TStartModule;

implementation
  
{$R *.lfm}
  

{ TStartModule }

procedure TStartModule.StartModuleCreate(Sender: TObject);
begin
  // TODO: Create Sqlite database if not exists
  // TODO: Load users registered
end;

procedure TStartModule.PasswordFocus(Sender: TObject; textContent: string);
begin   
  if textContent = 'Senha' then begin
    Password.Text := '';
  end;

end;

procedure TStartModule.PasswordLostFocus(Sender: TObject; textContent: string);
begin 
  if textContent = '' then begin
    Password.Text := 'Senha';
  end;

end;

procedure TStartModule.UsernameFocus(Sender: TObject; textContent: string);
begin
  if textContent = 'Usuário' then begin
    Username.Text := '';
  end;
end;

procedure TStartModule.UsernameLostFocus(Sender: TObject; textContent: string);
begin
  
  if textContent = '' then begin
    Username.Text := 'Usuário';
  end;
end;

end.
