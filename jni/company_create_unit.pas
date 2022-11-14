{hint: Pascal files location: ...\\jni }
unit company_create_unit;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls, gmaps;
  
type

  { TCompanyCreateModule }

  TCompanyCreateModule = class(jForm)
    CompanyName: jEditText;
    CompanySite: jEditText;
    CompanyEmail: jEditText;
    CompanyAddress: jEditText;
    CompanyNameTextView: jTextView;
    TextView2: jTextView;
    TextView3: jTextView;
    CompanyAddressTextView: jTextView;
    WebView1: jWebView;
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  CompanyCreateModule: TCompanyCreateModule;

implementation
  
{$R *.lfm}
  

end.
