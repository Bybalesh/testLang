/**
 * Original by Jan T. Sott (http://github.com/idleberg)
 *
 * Includes all commands and plug-ins shipped with NSIS 3.08
 */
Prism.languages.nsis = {
	'comment': {
		pattern: /(^|[^\\])(?:\/\*[\s\S]*?\*\/|[#;].*)/,
		lookbehind: true,
!include "MUI2.nsh"

Name "MyApp"
OutFile "MyAppInstaller.exe"
InstallDir "$PROGRAMFILES\MyApp"

!define MUI_ABORTWARNING

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

!insertmacro MUI_LANGUAGE "English"

Section
  SetOutPath $INSTDIR
  File /r "C:\path\to\your\application*.*"
SectionEnd
