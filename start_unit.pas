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

  { TAndroidModule1 }

  TAndroidModule1 = class(jForm)
    CheckBox1: jCheckBox;
    Username: jEditText;
    Password: jEditText;
    RegisterButton: jButton;
    LoginButton: jButton;
    TextView1: jTextView;
    procedure PasswordFocus(Sender: TObject; textContent: string);
    procedure UsernameFocus(Sender: TObject; textContent: string);
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  AndroidModule1: TAndroidModule1;

implementation
  
{$R *.lfm}
  

{ TAndroidModule1 }

procedure TAndroidModule1.PasswordFocus(Sender: TObject; textContent: string);
begin
  if Password.Text = 'Senha' then
     Password.Text := '';
end;

procedure TAndroidModule1.UsernameFocus(Sender: TObject; textContent: string);
begin
  if Username.Text = 'Usuário' then
     Username := '';
end;

end.