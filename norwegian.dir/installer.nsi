!include LogicLib.nsh
!include defines.nsh

Name "TSO Norwegian Language Installer"

Outfile "TSONorwegian.exe"

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

	File "_128_pickfamilystrs.cst"
	File "_129_designfamilystrs.cst"
	File "_130_designcharstrs.cst"
	File "_131_evictmodestrs.cst"
	File "_132_moveinmodestrs.cst"
	File "_133_regularmodestrs.cst"
	File "_134_nghrollover.cst"
	File "_136_disposebuttonstrs.cst"
	File "_137_placementerrs.cst"
	File "_138_vctltips.cst"
	File "_139_bldtips.cst"
	File "_142_objdialogs.cst"
	File "_145_optionstrs.cst"
	File "_146_budgetstrs.cst"
	File "_147_roofpanelstrs.cst"
	File "_148_pause.cst"
	File "_149_dirttoolerrs.cst"
	File "_153_appstrings.cst"
	File "_155_splashprogress.cst"
	File "_156_pipstrings.cst"
	File "_157_configstrings.cst"
	File "_159_objecttts.cst"
	File "_160_catalogratings.cst"
	File "_161_localkeys.cst"
	File "_169_pickasimstrings.cst"
	File "_170_createasimstrings.cst"
	File "_171_ucpstrings.cst"
	File "_172_buildpanelstrings.cst"
	File "_173_buypanelstrings.cst"
	File "_174_livepanelstrings.cst"
	File "_175_housepanelstrings.cst"
	File "_176_admitbanpanelstrings.cst"
	File "_177_logpanelstrings.cst"
	File "_178_roommatespanelstrings.cst"
	File "_179_statisticspanelstrings.cst"
	File "_180_envpanelstrings.cst"
	File "_181_lightingpanelstrings.cst"
	File "_182_timeofdaypanelstrings.cst"
	File "_183_soundspanelstrings.cst"
	File "_184_graphicspanelstrings.cst"
	File "_185_optionspanelstrings.cst"
	File "_186_playpanelstrings.cst"
	File "_187_soundpanelstrings.cst"
	File "_188_gizmostrings.cst"
	File "_189_personpagestrings.cst"
	File "_190_housepagestrings.cst"
	File "_191_gmpetitionstrings.cst"
	File "_192_doorpermissioneodstrings.cst"
	File "_193_signseodstrings.cst"
	File "_194_bookmarksstrings.cst"
	File "_195_messagestrings.cst"
	File "_196_messageiconstrings.cst"
	File "_197_trunkeodstrings.cst"
	File "_198_timereodstrings.cst"
	File "_199_scoreboardeodstrings.cst"
	File "_200_messageinboxstrings.cst"
	File "_201_messageinboxmenustrings.cst"

	File "_202_buildableareapanelstrings.cst"
	File "_203_gamecompdrawacardeodstrings.cst"
	File "_204_jobobjectpizzaeodstrings.cst"
	File "_205_banignoredialogstrings.cst"
	File "_206_querypanelstrings.cst"
	File "_207_danceflooreodstrings.cst"
	File "_208_roommateprotocolstrings.cst"
	File "_209_logindlgstrings.cst"
	File "_210_cityselprotocolstrings.cst"
	File "_211_housesimloginstrings.cst"
	File "_212_housepagestrings.cst"
	File "_213_datahandler.cst"
	File "_214_winskinbrowser.cst"
	File "_215_matchmakerclosezoom.cst"
	File "_216_buildableareapanel.cst"
	File "_217_personicon.cst"
	File "_218_neighborhood.cst"
	File "_219_searchresultsvec.cst"
	File "_220_lotreserves.cst"
	File "_221_cpstate.cst"
	File "_222_loginprotocol.cst"
	File "_223_hostvisitorprotocol.cst"
	File "_224_securetrading.cst"
	File "_225_messagemanager.cst"
	File "_226_skillprogressheadline.cst"
	File "_227_friendshipweb.cst"
	File "_228_exitdialog.cst"
	File "_229_pphelptoc.cst"
	File "_230_ppshared.cst"
	File "_231_pppetitionformdlg.cst"
	File "_232_ppcomplaindlg.cst"
	File "_233_profanitypanelstrings.cst"
	File "_234_cityselector.cst"
	File "_235_twopersonjobobjectmazeeodstrings.cst"
	File "_236_paperchaseeodstrings.cst"
	File "_237_passworddlgstrings.cst"
	File "_238_citydescriptionstrings.cst"
	File "_239_asyncsale.cst"
	File "_240_timeoutdlgstrings.cst"
	File "_241_creditsdlgstrings.cst"
	File "_242_creditsstrings.cst"
	File "_243_csrtools.cst"
	File "_244_csreject.cst"
	File "_245_buybuildmodestrings.cst"
	File "_246_lotpurchasedlgstrings.cst"
	File "_247_lotnameeditdlgstrings.cst"
	File "_248_hintsstrings.cst"
	File "_249_userinputdlg.cst"
	File "_250_doorcodedlg.cst"
	File "_251_connectprogressdialog.cst"
	File "_252_lotcategoryselectiondlgstrings.cst"
	File "_253_jobobjband.cst"
	File "_254_bookmarkerrorstrings.cst"
	File "_255_fwebcommenteditdlgstrings.cst"
	File "_256_visitorbonusdialog.cst"
	File "_257_neighborhooddlgstrings.cst"
	File "_258_roulettetableeodstrings.cst"
	File "_259_slotseodstrings.cst"
	File "_260_neighborhooddlgstrings.cst"
	File "_261_chatdlgstrings.cst"
	File "_262_carddeckstrings.cst"
	File "_263_blackjackeodstrings.cst"
	File "_264_rackeodstrings.cst"
	File "_265_rackownereodstrings.cst"
	File "_266_dressereodstrings.cst"
	File "_267_incomeexpensecategorystrings.cst"
	File "_268_offlottransactiondialogstrings.cst"
	File "_269_headhunterstrings.cst"
	File "_270_djstationstrings.cst"
	File "_272_jobtitlestrings.cst"
	File "_273_wargameeodstrings.cst"
	File "_274_fwebstrings.cst"
	File "_275_lmsonlinejobsglobals.cst"
	File "_276_lmsroommateprotocolstrings.cst"
	File "_277_lms_miscstring.cst"
	File "_278_miscstring.cst"
	File "_279_lms_petletters.cst"
SectionEnd