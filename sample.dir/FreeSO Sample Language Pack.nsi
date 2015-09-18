; Simming Online Council Sample Language Pack
; Copyright (C) 2015  Zack Casey, Simming Online Council
;
; This program is free software; you can redistribute it and/or
; modify it under the terms of the GNU General Public License
; as published by the Free Software Foundation; either version 2
; of the License, or (at your option) any later version.
; 
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

!include LogicLib.nsh
!include defines.nsh

Name "Simming Online Council Sample Language Pack"

Outfile "SOCSampleLangPack.exe"

RequestExecutionLevel admin

Page directory
Page instfiles

Var MaxisRegistry

Function .onInit
	ReadRegStr $MaxisRegistry HKLM 'SOFTWARE\Maxis\The Sims Online\' 'InstallDir'

	${If} $MaxisRegistry != ""
		StrCpy $INSTDIR  '$MaxisRegistry'
	${ElseIf} $MaxisRegistry == ""
		${If} ${FileExists} '$PROGRAMFILES\Maxis\The Sims Online'
			StrCpy $INSTDIR '$PROGRAMFILES\Maxis\The Sims Online\'
		${ElseIf} ${FileExists} '$PROGRAMFILES32\Maxis\The Sims Online\'
			StrCpy $INSTDIR '$PROGRAMFILES32\Maxis\The Sims Online\'
		${ElseIf} ${FileExists} '$PROGRAMFILES64\Maxis\The Sims Online\'
			StrCpy $INSTDIR '$PROGRAMFILES64\Maxis\The Sims Online\'
		${Else}
			MessageBox MB_OK "Couldn't find TSO installed on your system! Please locate the path!"

			Dialogs::Folder "Folder selection" "Locate The Sims Online installation folder:" $EXEDIR ${VAR_INSTDIR}
			StrCmp $INSTDIR "" Cancel Ok

			Cancel:
				DetailPrint "No folder was selected by the user"
				goto Exit

			Ok:
				DetailPrint "User selected install folder: $INSTDIR"
				goto Exit
		${EndIf}
	${EndIf}

	CreateDirectory '$TEMP\PDInstaller'

Exit:
FunctionEnd

Section "Main"
	CreateDirectory '$INSTDIR\TSOClient\gamedata\uitext\norwegian.dir'
	SetOutPath '$INSTDIR\TSOClient\gamedata\uitext\norwegian.dir'

	File "_1_sample.cst"
SectionEnd