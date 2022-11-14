{hint: Pascal files location: ...\AppSkeleton\jni }
unit access_unit;

{$mode delphi}

interface

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, AndroidWidget, Laz_And_Controls, location;
  
type

  { TAccessModule }

  TAccessModule = class(jForm)
    locationGps: jLocation;
  private
    {private declarations}
  public
    {public declarations}
  end;

var
  AccessModule: TAccessModule;

implementation
  
{$R *.lfm}
  

end.
