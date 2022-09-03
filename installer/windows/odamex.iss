; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

; Must be passed as a /D parameter to the compiler
;#define OdamexVersion "0.9.0"
;#define OdamexTestSuffix "-TEST1"

#define OdamexName "Odamex"
#define OdamexPublisher "Odamex Development Team"
#define OdamexURL "https://odamex.net/"

[Setup]
AppName={#OdamexName}
AppVersion={#OdamexVersion}
AppVerName={#OdamexName + " " + OdamexVersion + OdamexTestSuffix}
AppPublisher={#OdamexPublisher}
AppPublisherURL={#OdamexURL}
AppSupportURL={#OdamexURL}
AppUpdatesURL={#OdamexURL}
VersionInfoCompany={#OdamexName}
VersionInfoProductName={#OdamexName} Installer
VersionInfoProductVersion={#OdamexVersion}
VersionInfoVersion={#OdamexVersion}
DefaultDirName={autopf}\{#OdamexName}
DefaultGroupName={#OdamexName}
AllowNoIcons=true
LicenseFile=..\..\LICENSE
OutputBaseFilename={#"odamex-win-" + OdamexVersion + OdamexTestSuffix}
Compression=lzma2
SolidCompression=true
AlwaysShowDirOnReadyPage=true
ChangesEnvironment=true
AppID={{2E517BBB-916F-4AB6-80E0-D4A292513F7A}
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
ShowLanguageDialog=auto
UninstallDisplayIcon={app}\odamex.exe
EnableDirDoesntExistWarning=true
DirExistsWarning=no
AllowRootDirectory=True
ChangesAssociations=yes
ArchitecturesInstallIn64BitMode=x64
WizardImageFile=..\..\media\wininstall_largeback.bmp
WizardSmallImageFile=..\..\media\wininstall_wizardicon.bmp

[Languages]
Name: english; MessagesFile: compiler:Default.isl
Name: french; MessagesFile: compiler:Languages\French.isl
Name: german; MessagesFile: compiler:Languages\German.isl
Name: spanish; MessagesFile: compiler:Languages\Spanish.isl
Name: en; MessagesFile: compiler:Default.isl
Name: fr; MessagesFile: compiler:Languages\French.isl
Name: de; MessagesFile: compiler:Languages\German.isl
Name: es; MessagesFile: compiler:Languages\Spanish.isl

[Types]
Name: full; Description: Full installation
Name: compact; Description: Client-only installation
Name: custom; Description: Custom installation; Flags: iscustom

[Components]
Name: base; Description: Base data; Types: full compact custom; Flags: fixed
Name: client; Description: Odamex Client; Types: full compact custom; Flags: DisableNoUninstallWarning
Name: server; Description: Odamex Server; Types: full; Flags: DisableNoUninstallWarning
Name: launcher; Description: Odalaunch (Game Launcher); Types: full compact custom; Flags: DisableNoUninstallWarning

[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; COMMON FILES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Source: OutCommon\*.txt; DestDir: {app}; Flags: ignoreversion; Components: base
Source: OutCommon\config-samples\*; DestDir: {app}\config-samples; Flags: ignoreversion; Components: server
Source: OutCommon\licenses\*; DestDir: {app}\licenses; Flags: ignoreversion; Components: base
Source: OutCommon\odamex.wad; DestDir: {app}; Flags: ignoreversion; Components: client server

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 64-BIT FILES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Source: OutX64\libFLAC-8.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\libmodplug-1.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\libmpg123-0.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\libogg-0.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\libopus-0.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\libvorbis-0.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\libvorbisfile-3.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\odalaunch.exe; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: Is64BitInstallMode
Source: OutX64\odamex.exe; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\odasrv.exe; DestDir: {app}; Flags: ignoreversion; Components: server; Check: Is64BitInstallMode
Source: OutX64\SDL2_mixer.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\SDL2.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: Is64BitInstallMode
Source: OutX64\wxbase315u_net_vc14x_x64.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: Is64BitInstallMode
Source: OutX64\wxbase315u_vc14x_x64.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: Is64BitInstallMode
Source: OutX64\wxbase315u_xml_vc14x_x64.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: Is64BitInstallMode
Source: OutX64\wxmsw315u_core_vc14x_x64.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: Is64BitInstallMode
Source: OutX64\wxmsw315u_html_vc14x_x64.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: Is64BitInstallMode
Source: OutX64\wxmsw315u_xrc_vc14x_x64.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: Is64BitInstallMode

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 32-BIT FILES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Source: OutX86\libFLAC-8.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\libmodplug-1.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\libmpg123-0.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\libogg-0.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\libopus-0.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\libvorbis-0.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\libvorbisfile-3.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\odalaunch.exe; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: not Is64BitInstallMode
Source: OutX86\odamex.exe; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\odasrv.exe; DestDir: {app}; Flags: ignoreversion; Components: server; Check: not Is64BitInstallMode
Source: OutX86\SDL2_mixer.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\SDL2.dll; DestDir: {app}; Flags: ignoreversion; Components: client; Check: not Is64BitInstallMode
Source: OutX86\wxbase315u_net_vc14x.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: not Is64BitInstallMode
Source: OutX86\wxbase315u_vc14x.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: not Is64BitInstallMode
Source: OutX86\wxbase315u_xml_vc14x.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: not Is64BitInstallMode
Source: OutX86\wxmsw315u_core_vc14x.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: not Is64BitInstallMode
Source: OutX86\wxmsw315u_html_vc14x.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: not Is64BitInstallMode
Source: OutX86\wxmsw315u_xrc_vc14x.dll; DestDir: {app}; Flags: ignoreversion; Components: launcher; Check: not Is64BitInstallMode

[Icons]
Name: {group}\Odamex Client; Filename: {app}\odamex.exe; WorkingDir: {app}
Name: {group}\Odamex Launcher; Filename: {app}\odalaunch.exe; WorkingDir: {app}
Name: {group}\Odamex Server; Filename: {app}\odasrv.exe; WorkingDir: {app}
Name: {group}\Odamex User Folder; Filename: "%USERPROFILE%\Documents\My Games\Odamex"
Name: {group}\{cm:UninstallProgram,Odamex}; Filename: {uninstallexe}

[Code]
function GetUninstallString: string;
var
  sUnInstPath: string;
  sUnInstallString: String;
begin
  Result := '';
  sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#SetupSetting("AppID")}_is1');
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;
 
 
function GetRegistryVersion: string;
var
  sUnInstPath: string;
  sVersionString: String;
begin
  Result := '';
  sUnInstPath := ExpandConstant('Software\Microsoft\Windows\CurrentVersion\Uninstall\{#SetupSetting("AppID")}_is1');
  sVersionString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'DisplayVersion', sVersionString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'DisplayVersion', sVersionString);
  Result := sVersionString;
end;
 
 
function IsUpgrade: Boolean;
begin
  Result := (GetUninstallString() <> '');
end;
 
 
function Count(What, Where: String): Integer;
begin
   Result := 0;
    if Length(What) = 0 then
        exit;
    while Pos(What,Where)>0 do
    begin
        Where := Copy(Where,Pos(What,Where)+Length(What),Length(Where));
        Result := Result + 1;
    end;
end;
 
 
//split text to array
procedure Explode(var ADest: TArrayOfString; aText, aSeparator: String);
var tmp: Integer;
begin
    if aSeparator='' then
        exit;
 
    SetArrayLength(ADest,Count(aSeparator,aText)+1)
 
    tmp := 0;
    repeat
        if Pos(aSeparator,aText)>0 then
        begin
 
            ADest[tmp] := Copy(aText,1,Pos(aSeparator,aText)-1);
            aText := Copy(aText,Pos(aSeparator,aText)+Length(aSeparator),Length(aText));
            tmp := tmp + 1;
 
        end else
        begin
 
             ADest[tmp] := aText;
             aText := '';
 
        end;
    until Length(aText)=0;
end;
 
 
//compares two version numbers, returns -1 if vA is newer, 0 if both are identical, 1 if vB is newer
function CompareVersion(vA,vB: String): Integer;
var tmp: TArrayOfString;
    verA,verB: Array of Integer;
    i,len: Integer;
begin
 
    StringChange(vA,'-','.');
    StringChange(vB,'-','.');
 
    Explode(tmp,vA,'.');
    SetArrayLength(verA,GetArrayLength(tmp));
    for i := 0 to GetArrayLength(tmp) - 1 do
        verA[i] := StrToIntDef(tmp[i],0);
        
    Explode(tmp,vB,'.');
    SetArrayLength(verB,GetArrayLength(tmp));
    for i := 0 to GetArrayLength(tmp) - 1 do
        verB[i] := StrToIntDef(tmp[i],0);
 
    len := GetArrayLength(verA);
    if GetArrayLength(verB) < len then
        len := GetArrayLength(verB);
 
    for i := 0 to len - 1 do
        if verA[i] < verB[i] then
        begin
            Result := 1;
            exit;
        end else
        if verA[i] > verB[i] then
        begin
            Result := -1;
            exit
        end;
 
    if GetArrayLength(verA) < GetArrayLength(verB) then
    begin
        Result := 1;
        exit;
    end else
    if GetArrayLength(verA) > GetArrayLength(verB) then
    begin
        Result := -1;
        exit;
    end;
 
    Result := 0; 
end;
 
 
function InitializeSetup(): Boolean;
var
  V: Integer;
  iUpgradeResult: Integer;
  iResultCode: Integer;
  iVersionCompare: Integer;
  sUnInstallString: string;
  sVersion: string;
  sOldVersion: string;
  bUpgrade: Boolean;
  bSilent: Boolean;
begin
  bSilent := WizardSilent();
  if bSilent = False then
  begin
    bUpgrade := IsUpgrade();
    if bUpgrade then
    begin
      sVersion := '{#SetupSetting("AppVersion")}';
      sOldVersion := GetRegistryVersion();
      iVersionCompare := CompareVersion(sOldVersion, sVersion);
      if iVersionCompare = -1 then
          iUpgradeResult := MsgBox(ExpandConstant('The version of Odamex you are about to install is a downgrade to the currently installed version. Do you want to proceed with the installation?'), mbConfirmation, MB_YESNO);
      if iVersionCompare = 0 then
          iUpgradeResult := MsgBox(ExpandConstant('The version of Odamex you are about to install is identical to the currently installed version. Do you want to proceed with the installation?'), mbConfirmation, MB_YESNO);
      if iVersionCompare = 1 then
          iUpgradeResult := IDYES;

      if iUpgradeResult = IDYES then
      begin
          V := MsgBox(ExpandConstant('Odamex has been detected on this machine. If you do not uninstall, there will be an in-place installation of Odamex to the same path. Do you want to uninstall the previous installation?'), mbConfirmation, MB_YESNO);
        
          if V = IDYES then
          begin
            sUnInstallString := GetUninstallString();
            sUnInstallString := RemoveQuotes(sUnInstallString);
            Exec(ExpandConstant(sUnInstallString), '', '', SW_SHOW, ewWaitUntilTerminated, iResultCode);
            if iResultCode = 0 then
            begin
                Result := True;
            end
            else
            begin
                Result := False;
            end;
          end
          else
          begin
              Result := True;
          end;
      end
      else
      begin
          Result := False;
      end;
    end
    else
    begin
        Result := True;
    end;
  end
  else
  begin
      Result := True;
  end;
end;

[Run]
Filename: {app}\odalaunch.exe; Description: {cm:LaunchProgram,Odalaunch}; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: {app}\odamex.out
Type: files; Name: {app}\odamex.cfg
Type: files; Name: {app}\odasrv.cfg
Type: files; Name: {app}\*.log
Type: dirifempty; Name: {app}

[Registry]
; .odd file association
#define OdamexDemoExt ".odd"
#define OdamexDemoFile OdamexName + "File" + OdamexDemoExt

Root: HKA; Subkey: {#"Software\Classes\" + OdamexDemoExt +  "\OpenWithProgids"}; ValueType: string; ValueName: {#OdamexDemoFile}; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: {#"Software\Classes\" + OdamexDemoFile}; ValueType: string; ValueName: ""; ValueData: {#OdamexName + " Demo"}; Flags: uninsdeletekey
Root: HKA; Subkey: {#"Software\Classes\" + OdamexDemoFile + "\DefaultIcon"}; ValueType: string; ValueName: ""; ValueData: "{app}\odamex.exe,1"
Root: HKA; Subkey: {#"Software\Classes\" + OdamexDemoFile + "\shell\open\command"}; ValueType: string; ValueName: ""; ValueData: """{app}\odamex.exe"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\odamex.exe\SupportedTypes"; ValueType: string; ValueName: {#OdamexDemoExt}; ValueData: "" 

; odamex:// URI scheme
Root: HKA; Subkey: "Software\Classes\odamex"; ValueType: string; ValueName: ""; ValueData: "URL:Odamex Protocol"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\odamex"; ValueType: string; ValueName: "URL Protocol"; ValueData: ""; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\odamex\Shell\Open\Command"; ValueType: string; ValueName: ""; ValueData: """{app}\odamex.exe"" ""%1"""; Flags: uninsdeletekey
