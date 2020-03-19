﻿; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TODO: Update the version numbers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

AppId={{AF7494D1-406F-4D04-A8FE-8F9DAB97F611}
AppName=RisohEditor
AppVerName=RisohEditor 5.3.4
AppPublisher=Katayama Hirofumi MZ
AppPublisherURL=http://katahiromz.web.fc2.com/
AppSupportURL=http://katahiromz.web.fc2.com/
AppUpdatesURL=http://katahiromz.web.fc2.com/
DefaultDirName=C:\RisohEditor
DefaultGroupName=RisohEditor
DisableDirPage=no
AllowNoIcons=yes
LicenseFile=LICENSE.txt
OutputDir=.
OutputBaseFilename=RisohEditor-5.3.4
SetupIconFile=src\res\Icon_100.ico
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\RisohEditor.exe
UsePreviousAppDir=yes
VersionInfoCompany=Katayama Hirofumi MZ
VersionInfoCopyright=Copyright (C) 2017-2019 Katayama Hirofumi MZ.
VersionInfoDescription=Win32 Resource Editor
VersionInfoProductName=RisohEditor
VersionInfoProductTextVersion=5.3.4
VersionInfoProductVersion=5.3.4
VersionInfoVersion=5.3.4

[Languages]
Name: "armenian"; MessagesFile:  "compiler:Languages\Armenian.islu"
Name: "brazilianportuguese"; MessagesFile:  "compiler:Languages\BrazilianPortuguese.isl"
Name: "catalan"; MessagesFile:  "compiler:Languages\Catalan.isl"
Name: "corsican"; MessagesFile:  "compiler:Languages\Corsican.isl"
Name: "czech"; MessagesFile:  "compiler:Languages\Czech.isl"
Name: "danish"; MessagesFile:  "compiler:Languages\Danish.isl"
Name: "dutch"; MessagesFile:  "compiler:Languages\Dutch.isl"
Name: "english"; MessagesFile:  "compiler:Default.isl"
Name: "finnish"; MessagesFile:  "compiler:Languages\Finnish.isl"
Name: "french"; MessagesFile:  "compiler:Languages\French.isl"
Name: "german"; MessagesFile:  "compiler:Languages\German.isl"
Name: "greek"; MessagesFile:  "compiler:Languages\Greek.isl"
Name: "hebrew"; MessagesFile:  "compiler:Languages\Hebrew.isl"
Name: "hungarian"; MessagesFile:  "compiler:Languages\Hungarian.isl"
Name: "italian"; MessagesFile:  "compiler:Languages\Italian.isl"
Name: "japanese"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "nepali"; MessagesFile: "compiler:Languages\Nepali.islu"
Name: "norwegian"; MessagesFile: "compiler:Languages\Norwegian.isl"
Name: "polish"; MessagesFile: "compiler:Languages\Polish.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "scottishgaelic"; MessagesFile: "compiler:Languages\ScottishGaelic.isl"
Name: "serbiancyrillic"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"
Name: "serbianlatin"; MessagesFile: "compiler:Languages\SerbianLatin.isl"
Name: "slovenian"; MessagesFile: "compiler:Languages\Slovenian.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "turkish"; MessagesFile: "compiler:Languages\Turkish.isl"
Name: "ukrainian"; MessagesFile: "compiler:Languages\Ukrainian.isl"

;; Unofficial Languages: https://github.com/jrsoftware/issrc/tree/master/Files/Languages/Unofficial
;Name: "afrikaans"; MessagesFile: "compiler:Languages\Afrikaans.isl"
;Name: "albanian"; MessagesFile: "compiler:Languages\Albanian.isl"
;Name: "arabic"; MessagesFile: "compiler:Languages\Arabic.isl"
;Name: "asturian"; MessagesFile: "compiler:Languages\Asturian.isl"
;Name: "basque"; MessagesFile: "compiler:Languages\Basque.isl"
;Name: "belarusian"; MessagesFile: "compiler:Languages\Belarusian.isl"
;Name: "bengali"; MessagesFile: "compiler:Languages\Bengali.islu"
;Name: "bosnian"; MessagesFile: "compiler:Languages\Bosnian.isl"
;Name: "bulgarian"; MessagesFile: "compiler:Languages\Bulgarian.isl"
;Name: "chinesesimplified"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"
;Name: "chinesetraditional"; MessagesFile: "compiler:Languages\ChineseTraditional.isl"
;Name: "croatian"; MessagesFile: "compiler:Languages\Croatian.isl"
;Name: "englishbritish"; MessagesFile: "compiler:Languages\EnglishBritish.isl"
;Name: "esperanto"; MessagesFile: "compiler:Languages\Esperanto.isl"
;Name: "estonian"; MessagesFile: "compiler:Languages\Estonian.isl"
;Name: "farsi"; MessagesFile: "compiler:Languages\Farsi.isl"
;Name: "galician"; MessagesFile: "compiler:Languages\Galician.isl"
;Name: "georgian"; MessagesFile: "compiler:Languages\Georgian.islu"
;Name: "hindi"; MessagesFile: "compiler:Languages\Hindi.islu"
;Name: "indonesian"; MessagesFile: "compiler:Languages\Indonesian.isl"
;Name: "kazakh"; MessagesFile: "compiler:Languages\Kazakh.islu"
;Name: "korean"; MessagesFile: "compiler:Languages\Korean.isl"
;Name: "kurdish"; MessagesFile: "compiler:Languages\Kurdish.isl"
;Name: "latvian"; MessagesFile: "compiler:Languages\Latvian.isl"
;Name: "ligurian"; MessagesFile: "compiler:Languages\Ligurian.isl"
;Name: "lithuanian"; MessagesFile: "compiler:Languages\Lithuanian.isl"
;Name: "luxemburgish"; MessagesFile: "compiler:Languages\Luxemburgish.isl"
;Name: "macedonian"; MessagesFile: "compiler:Languages\Macedonian.isl"
;Name: "malaysian"; MessagesFile: "compiler:Languages\Malaysian.isl"
;Name: "mongolian"; MessagesFile: "compiler:Languages\Mongolian.isl"
;Name: "montenegrian"; MessagesFile: "compiler:Languages\Montenegrian.isl"
;Name: "norwegiannynorsk"; MessagesFile: "compiler:Languages\NorwegianNynorsk.isl"
;Name: "occitan"; MessagesFile: "compiler:Languages\Occitan.isl"
;Name: "romanian"; MessagesFile: "compiler:Languages\Romanian.isl"
;Name: "slovak"; MessagesFile: "compiler:Languages\Slovak.isl"
;Name: "swedish"; MessagesFile: "compiler:Languages\Swedish.isl"
;Name: "tatar"; MessagesFile: "compiler:Languages\Tatar.isl"
;Name: "thai"; MessagesFile: "compiler:Languages\Thai.isl"
;Name: "uyghur"; MessagesFile: "compiler:Languages\Uyghur.islu"
;Name: "uzbek"; MessagesFile: "compiler:Languages\Uzbek.isl"
;Name: "valencian"; MessagesFile: "compiler:Languages\Valencian.isl"
;Name: "vietnamese"; MessagesFile: "compiler:Languages\Vietnamese.islu"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "README.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "READMEJP.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "Standardize.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "HYOJUNKA.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "TRANSLATORS.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "mcdx\MESSAGETABLEDX.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "build\RisohEditor.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "src\resource.h"; DestDir: "{app}"; Flags: ignoreversion
Source: "data\Constants.txt"; DestDir: "{app}\data"; Flags: ignoreversion
Source: "build\mcdx.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "src\MOleCtrl.hpp"; DestDir: "{app}\OLE"; Flags: ignoreversion
Source: "include\MWindowBase.hpp"; DestDir: "{app}\OLE"; Flags: ignoreversion
Source: "src\DlgInit.h"; DestDir: "{app}\DlgInit"; Flags: ignoreversion
Source: "MyWndCtrl\MWindowBase.hpp"; DestDir: "{app}\MyWndCtrl"; Flags: ignoreversion
Source: "MyWndCtrl\MyWndCtrl.cpp"; DestDir: "{app}\MyWndCtrl"; Flags: ignoreversion
Source: "MyWndCtrl\CMakeLists.txt"; DestDir: "{app}\MyWndCtrl"; Flags: ignoreversion
Source: "build\MyWndCtrl.dll"; DestDir: "{app}\MyWndCtrl"; Flags: ignoreversion
Source: "data\bin\libgcc_s_dw2-1.dll"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\libwinpthread-1.dll"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\windres.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\upx.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "data\bin\mcpp.exe"; DestDir: "{app}\data\bin"; Flags: ignoreversion
Source: "EGA\samples\fact.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA\samples\input.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA\samples\plus.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "EGA\samples\break.ega"; DestDir: "{app}\EGA"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\commctrl.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\dlgs.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\windef.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\windows.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\winnt.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\winresrc.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\winuser.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\winver.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
Source: "data\lib\gcc\i686-w64-mingw32\7.3.0\include\afxres.h"; DestDir: "{app}\data\lib\gcc\i686-w64-mingw32\7.3.0\include"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\RisohEditor"; Filename: "{app}\RisohEditor.exe"
Name: "{group}\{cm:ReadmeEnglish}"; Filename: "{app}\README.txt"
Name: "{group}\{cm:ReadmeJapanese}"; Filename: "{app}\READMEJP.txt"
Name: "{group}\{cm:LicenseEnglish}"; Filename: "{app}\LICENSE.txt"
Name: "{group}\{cm:ProgramOnTheWeb,RisohEditor}"; Filename: "http://katahiromz.web.fc2.com"
Name: "{group}\{cm:UninstallProgram,RisohEditor}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\RisohEditor"; Filename: "{app}\RisohEditor.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\RisohEditor.exe"; Description: "{cm:LaunchProgram,RisohEditor}"; Flags: nowait postinstall skipifsilent

[CustomMessages]
armenian.ReadmeEnglish=ReadMe (English)
armenian.ReadmeJapanese=ReadMe (Japanese)
armenian.LicenseEnglish=License (English)
brazilianportuguese.ReadmeEnglish=ReadMe (English)
brazilianportuguese.ReadmeJapanese=ReadMe (Japanese)
brazilianportuguese.LicenseEnglish=License (English)
catalan.ReadmeEnglish=ReadMe (English)
catalan.ReadmeJapanese=ReadMe (Japanese)
catalan.LicenseEnglish=License (English)
corsican.ReadmeEnglish=ReadMe (English)
corsican.ReadmeJapanese=ReadMe (Japanese)
corsican.LicenseEnglish=License (English)
czech.ReadmeEnglish=ReadMe (English)
czech.ReadmeJapanese=ReadMe (Japanese)
czech.LicenseEnglish=License (English)
danish.ReadmeEnglish=ReadMe (English)
danish.ReadmeJapanese=ReadMe (Japanese)
danish.LicenseEnglish=License (English)
dutch.ReadmeEnglish=ReadMe (English)
dutch.ReadmeJapanese=ReadMe (Japanese)
dutch.LicenseEnglish=License (English)
english.ReadmeEnglish=ReadMe (English)
english.ReadmeJapanese=ReadMe (Japanese)
english.LicenseEnglish=License (English)
finnish.ReadmeEnglish=ReadMe (English)
finnish.ReadmeJapanese=ReadMe (Japanese)
finnish.LicenseEnglish=License (English)
french.ReadmeEnglish=ReadMe (English)
french.ReadmeJapanese=ReadMe (Japanese)
french.LicenseEnglish=License (English)
german.ReadmeEnglish=ReadMe (English)
german.ReadmeJapanese=ReadMe (Japanese)
german.LicenseEnglish=License (English)
greek.ReadmeEnglish=ReadMe (English)
greek.ReadmeJapanese=ReadMe (Japanese)
greek.LicenseEnglish=License (English)
hebrew.ReadmeEnglish=ReadMe (English)
hebrew.ReadmeJapanese=ReadMe (Japanese)
hebrew.LicenseEnglish=License (English)
hungarian.ReadmeEnglish=ReadMe (English)
hungarian.ReadmeJapanese=ReadMe (Japanese)
hungarian.LicenseEnglish=License (English)
italian.ReadmeEnglish=Leggimi (Inglese)
italian.ReadmeJapanese=Leggimi (Giapponese)
italian.LicenseEnglish=Licenza (Inglese)
japanese.ReadmeEnglish=ReadMe (英語)
japanese.ReadmeJapanese=読んでね (日本語)
japanese.LicenseEnglish=ライセンス (英語)
norwegian.ReadmeEnglish=ReadMe (English)
norwegian.ReadmeJapanese=ReadMe (Japanese)
norwegian.LicenseEnglish=License (English)
nepali.ReadmeEnglish=ReadMe (English)
nepali.ReadmeJapanese=ReadMe (Japanese)
nepali.LicenseEnglish=License (English)
polish.ReadmeEnglish=ReadMe (English)
polish.ReadmeJapanese=ReadMe (Japanese)
polish.LicenseEnglish=License (English)
portuguese.ReadmeEnglish=ReadMe (English)
portuguese.ReadmeJapanese=ReadMe (Japanese)
portuguese.LicenseEnglish=License (English)
russian.ReadmeEnglish=ReadMe (English)
russian.ReadmeJapanese=ReadMe (Japanese)
russian.LicenseEnglish=License (English)
scottishgaelic.ReadmeEnglish=ReadMe (English)
scottishgaelic.ReadmeJapanese=ReadMe (Japanese)
scottishgaelic.LicenseEnglish=License (English)
serbiancyrillic.ReadmeEnglish=ReadMe (English)
serbiancyrillic.ReadmeJapanese=ReadMe (Japanese)
serbiancyrillic.LicenseEnglish=License (English)
serbianlatin.ReadmeEnglish=ReadMe (English)
serbianlatin.ReadmeJapanese=ReadMe (Japanese)
serbianlatin.LicenseEnglish=License (English)
slovenian.ReadmeEnglish=ReadMe (English)
slovenian.ReadmeJapanese=ReadMe (Japanese)
slovenian.LicenseEnglish=License (English)
spanish.ReadmeEnglish=ReadMe (English)
spanish.ReadmeJapanese=ReadMe (Japanese)
spanish.LicenseEnglish=License (English)
turkish.ReadmeEnglish=ReadMe (English)
turkish.ReadmeJapanese=ReadMe (Japanese)
turkish.LicenseEnglish=License (English)
ukrainian.ReadmeEnglish=ReadMe (English)
ukrainian.ReadmeJapanese=ReadMe (Japanese)
ukrainian.LicenseEnglish=License (English)

;; Unofficial Languages
;afrikaans.ReadmeEnglish=ReadMe (English)
;afrikaans.ReadmeJapanese=ReadMe (Japanese)
;afrikaans.LicenseEnglish=License (English)
;albanian.ReadmeEnglish=ReadMe (English)
;albanian.ReadmeJapanese=ReadMe (Japanese)
;albanian.LicenseEnglish=License (English)
;arabic.ReadmeEnglish=ReadMe (English)
;arabic.ReadmeJapanese=ReadMe (Japanese)
;arabic.LicenseEnglish=License (English)
;asturian.ReadmeEnglish=ReadMe (English)
;asturian.ReadmeJapanese=ReadMe (Japanese)
;asturian.LicenseEnglish=License (English)
;basque.ReadmeEnglish=ReadMe (English)
;basque.ReadmeJapanese=ReadMe (Japanese)
;basque.LicenseEnglish=License (English)
;belarusian.ReadmeEnglish=ReadMe (English)
;belarusian.ReadmeJapanese=ReadMe (Japanese)
;belarusian.LicenseEnglish=License (English)
;bengali.ReadmeEnglish=ReadMe (English)
;bengali.ReadmeJapanese=ReadMe (Japanese)
;bengali.LicenseEnglish=License (English)
;bosnian.ReadmeEnglish=ReadMe (English)
;bosnian.ReadmeJapanese=ReadMe (Japanese)
;bosnian.LicenseEnglish=License (English)
;bulgarian.ReadmeEnglish=ReadMe (English)
;bulgarian.ReadmeJapanese=ReadMe (Japanese)
;bulgarian.LicenseEnglish=License (English)
;chinesesimplified.ReadmeEnglish=ReadMe (English)
;chinesesimplified.ReadmeJapanese=ReadMe (Japanese)
;chinesesimplified.LicenseEnglish=License (English)
;chinesetraditional.ReadmeEnglish=ReadMe (English)
;chinesetraditional.ReadmeJapanese=ReadMe (Japanese)
;chinesetraditional.LicenseEnglish=License (English)
;croatian.ReadmeEnglish=ReadMe (English)
;croatian.ReadmeJapanese=ReadMe (Japanese)
;croatian.LicenseEnglish=License (English)
;englishbritish.ReadmeEnglish=ReadMe (English)
;englishbritish.ReadmeJapanese=ReadMe (Japanese)
;englishbritish.LicenseEnglish=License (English)
;esperanto.ReadmeEnglish=ReadMe (English)
;esperanto.ReadmeJapanese=ReadMe (Japanese)
;esperanto.LicenseEnglish=License (English)
;estonian.ReadmeEnglish=ReadMe (English)
;estonian.ReadmeJapanese=ReadMe (Japanese)
;estonian.LicenseEnglish=License (English)
;farsi.ReadmeEnglish=ReadMe (English)
;farsi.ReadmeJapanese=ReadMe (Japanese)
;farsi.LicenseEnglish=License (English)
;galician.ReadmeEnglish=ReadMe (English)
;galician.ReadmeJapanese=ReadMe (Japanese)
;galician.LicenseEnglish=License (English)
;georgian.ReadmeEnglish=ReadMe (English)
;georgian.ReadmeJapanese=ReadMe (Japanese)
;georgian.LicenseEnglish=License (English)
;hindi.ReadmeEnglish=ReadMe (English)
;hindi.ReadmeJapanese=ReadMe (Japanese)
;hindi.LicenseEnglish=License (English)
;indonesian.ReadmeEnglish=ReadMe (English)
;indonesian.ReadmeJapanese=ReadMe (Japanese)
;indonesian.LicenseEnglish=License (English)
;kazakh.ReadmeEnglish=ReadMe (English)
;kazakh.ReadmeJapanese=ReadMe (Japanese)
;kazakh.LicenseEnglish=License (English)
;korean.ReadmeEnglish=ReadMe (English)
;korean.ReadmeJapanese=ReadMe (Japanese)
;korean.LicenseEnglish=License (English)
;kurdish.ReadmeEnglish=ReadMe (English)
;kurdish.ReadmeJapanese=ReadMe (Japanese)
;kurdish.LicenseEnglish=License (English)
;latvian.ReadmeEnglish=ReadMe (English)
;latvian.ReadmeJapanese=ReadMe (Japanese)
;latvian.LicenseEnglish=License (English)
;ligurian.ReadmeEnglish=ReadMe (English)
;ligurian.ReadmeJapanese=ReadMe (Japanese)
;ligurian.LicenseEnglish=License (English)
;lithuanian.ReadmeEnglish=ReadMe (English)
;lithuanian.ReadmeJapanese=ReadMe (Japanese)
;lithuanian.LicenseEnglish=License (English)
;luxemburgish.ReadmeEnglish=ReadMe (English)
;luxemburgish.ReadmeJapanese=ReadMe (Japanese)
;luxemburgish.LicenseEnglish=License (English)
;macedonian.ReadmeEnglish=ReadMe (English)
;macedonian.ReadmeJapanese=ReadMe (Japanese)
;macedonian.LicenseEnglish=License (English)
;malaysian.ReadmeEnglish=ReadMe (English)
;malaysian.ReadmeJapanese=ReadMe (Japanese)
;malaysian.LicenseEnglish=License (English)
;mongolian.ReadmeEnglish=ReadMe (English)
;mongolian.ReadmeJapanese=ReadMe (Japanese)
;mongolian.LicenseEnglish=License (English)
;montenegrian.ReadmeEnglish=ReadMe (English)
;montenegrian.ReadmeJapanese=ReadMe (Japanese)
;montenegrian.LicenseEnglish=License (English)
;norwegiannynorsk.ReadmeEnglish=ReadMe (English)
;norwegiannynorsk.ReadmeJapanese=ReadMe (Japanese)
;norwegiannynorsk.LicenseEnglish=License (English)
;occitan.ReadmeEnglish=ReadMe (English)
;occitan.ReadmeJapanese=ReadMe (Japanese)
;occitan.LicenseEnglish=License (English)
;romanian.ReadmeEnglish=ReadMe (English)
;romanian.ReadmeJapanese=ReadMe (Japanese)
;romanian.LicenseEnglish=License (English)
;slovak.ReadmeEnglish=ReadMe (English)
;slovak.ReadmeJapanese=ReadMe (Japanese)
;slovak.LicenseEnglish=License (English)
;swedish.ReadmeEnglish=ReadMe (English)
;swedish.ReadmeJapanese=ReadMe (Japanese)
;swedish.LicenseEnglish=License (English)
;tatar.ReadmeEnglish=ReadMe (English)
;tatar.ReadmeJapanese=ReadMe (Japanese)
;tatar.LicenseEnglish=License (English)
;thai.ReadmeEnglish=ReadMe (English)
;thai.ReadmeJapanese=ReadMe (Japanese)
;thai.LicenseEnglish=License (English)
;uyghur.ReadmeEnglish=ReadMe (English)
;uyghur.ReadmeJapanese=ReadMe (Japanese)
;uyghur.LicenseEnglish=License (English)
;uzbek.ReadmeEnglish=ReadMe (English)
;uzbek.ReadmeJapanese=ReadMe (Japanese)
;uzbek.LicenseEnglish=License (English)
;valencian.ReadmeEnglish=ReadMe (English)
;valencian.ReadmeJapanese=ReadMe (Japanese)
;valencian.LicenseEnglish=License (English)
;vietnamese.ReadmeEnglish=ReadMe (English)
;vietnamese.ReadmeJapanese=ReadMe (Japanese)
;vietnamese.LicenseEnglish=License (English)
