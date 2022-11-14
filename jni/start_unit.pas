{hint: Pascal files location: ...\AppSkeleton\jni }
unit start_unit;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls, access_unit;
  
type

  { TStartModule }

  TStartModule = class(jForm)
    AccountsListView: jListView;
    httpClient: jHttpClient;
    OpenRegisterButton: jButton;
    LoginButton: jButton;
    KeepConnected: jCheckBox;
    Password: jEditText;
    RegisterTextView: jTextView;
    sqliteCursor: jSqliteCursor;
    sqliteDataAccess: jSqliteDataAccess;
    UserExistingTextView: jTextView;
    Username: jEditText;
    procedure AccountsListViewClickItem(Sender: TObject; itemIndex: integer;
      itemCaption: string);
    procedure LoginButtonClick(Sender: TObject);
    procedure PasswordFocus(Sender: TObject; textContent: string);
    procedure PasswordLostFocus(Sender: TObject; textContent: string);
    procedure StartModuleCreate(Sender: TObject);
    procedure StartModuleJNIPrompt(Sender: TObject);
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

end;

procedure TStartModule.StartModuleJNIPrompt(Sender: TObject);
begin
  // TODO: Create Sqlite database if not exists
  AccessModule.sqliteDataAccess.OpenOrCreate('skeleton.db');
  if not AccessModule.sqliteDataAccess.CheckDataBaseExists('skeleton.db') then begin
     AccessModule.sqliteDataAccess.CreateTable('CREATE TABLE IF NOT EXISTS users (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, username VARCHAR(200) NOT NULL, password VARCHAR(200) NOT NULL, email VARCHAR(200) NOT NULL, telephone VARCHAR(20), keep BOOL);');
     AccessModule.sqliteDataAccess.InsertIntoTable('INSERT INTO users (username, password, email, telephone, keep) VALUES ("felipebastosweb", "123456", "felipebastosweb@gmail.com", "71 99736-4959", true);');

  end;
  // TODO: Load users registered
  AccessModule.sqliteDataAccess.Select('SELECT * FROM users;');
  AccessModule.sqliteDataAccess.Cursor.MoveToFirst;
  while not AccessModule.sqliteDataAccess.Cursor.EOF do begin
    AccountsListView.Items.Add(AccessModule.sqliteDataAccess.Cursor.GetValueAsString('username'));
    Username.Text := AccessModule.sqliteDataAccess.Cursor.GetValueAsString('username');
    AccessModule.sqliteDataAccess.Cursor.MoveToNext;
  end;
end;

procedure TStartModule.LoginButtonClick(Sender: TObject);
begin
  if not AccessModule.sqliteDataAccess.CheckDataBaseExists(AccessModule.DatabaseName.Text) then
     Username.Text := 'Banco nao existe!!';
  // TODO: Verify if user exists in api backend
  // TODO: save user account in Sqlite if user logged in API
end;

procedure TStartModule.AccountsListViewClickItem(Sender: TObject;
  itemIndex: integer; itemCaption: string);
begin
  // TODO: Login with user registered
end;

procedure TStartModule.UsernameFocus(Sender: TObject; textContent: string);
begin
  if textContent = 'Usuário' then begin
    Username.Text := '';
  end;
end;                            

procedure TStartModule.PasswordFocus(Sender: TObject; textContent: string);
begin
  if textContent = 'Senha' then begin
    Password.Text := '';
  end;
end;

procedure TStartModule.UsernameLostFocus(Sender: TObject; textContent: string);
begin
  if textContent = '' then begin
    Username.Text := 'Usuário';
  end;
end;                  

procedure TStartModule.PasswordLostFocus(Sender: TObject; textContent: string);
begin
  if textContent = '' then begin
    Password.Text := 'Senha';
  end;
end;


end.
