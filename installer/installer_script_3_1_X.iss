; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Radioddity GD-77 CPS 3.1.x - Community Edition"
#define MyAppVersion "3.1.x.0"
#define MyAppURL "https://github.com/rogerclarkmelbourne/radioddity_gd-77_cps"
#define MyAppExeName "GD77CPS.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{68542C1D-33BC-4EE4-80E0-D40A1A1486D3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonpf}\RadioddityGD77CPS31XCommunityEdition
CreateAppDir=yes
DisableProgramGroupPage=yes
OutputDir=..\installer
OutputBaseFilename=RadioddityGD77CPS31XCommunityEditionInstaller
Compression=none
SolidCompression=yes  
UsePreviousAppDir=no
UsePreviousSetupType=no

[Types]
Name: "normal"; Description: "Normal installation"
Name: "portable"; Description: "Portable installation"

; Components are used inside the script and can be composed of a set of 'Types'
[Components]
Name: "normal";     Description: "Normal installation.";   Types: normal
Name: "portable";   Description: "Portable installation. This will run from a memory stick and uses an ini file to store defaults etc";   Types: portable

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\bin\Release_3.1.x\GD77CPS.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release_3.1.x\Default31X.dat"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release_3.1.x\DockPanel.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release_3.1.x\help.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Setup.ini"; DestDir: "{app}";  Components: portable; Flags: ignoreversion
Source: "..\bin\Release_3.1.x\Tone.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\Release_3.1.x\WeifenLuo.WinFormsUI.Docking.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Language\English.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\English.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\French.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\French.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\German.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\German.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Polski.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Polski.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Portuguese.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Portuguese.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Slovenian.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Slovenian.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Spanish.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Spanish.chm"; DestDir: "{app}\Language"; Flags: ignoreversion 
Source: "..\Language\SpanishCatalan.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\SpanishCatalan.chm"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Ukrainian.xml"; DestDir: "{app}\Language"; Flags: ignoreversion
Source: "..\Language\Ukrainian.chm"; DestDir: "{app}\Language"; Flags: ignoreversion

Source: "..\OpenGD77CommDriver\wdi-simple.exe"; DestDir: "{%TEMP}\OpenGD77CommDriver"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{%TEMP}\OpenGD77CommDriver\wdi-simple.exe"; Parameters: --vid 0x01FC9 --pid 0x0094 --type 3 --name OpenGD77; Description: "Install OpenGD77 Comm port driver"; Flags: runascurrentuser  nowait postinstall skipifsilent
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent