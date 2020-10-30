$PBExportHeader$mdiapp.sra
$PBExportComments$Generated Application Object
forward
global type mdiapp from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
String gs_themename, gs_EChartsThem
end variables

global type mdiapp from application
string appname = "mdiapp"
string themepath = "C:\Program Files (x86)\Appeon\Shared\PowerBuilder\theme190"
string themename = "Flat Design Blue"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = "png\echarts.ico"
end type
global mdiapp mdiapp

on mdiapp.create
appname="mdiapp"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on mdiapp.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//////
// Profile PB Demo DB V2019R3
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString='DSN=PB Demo DB V2019R3;UID=dba;PWD=sql'"


Connect;

If SQLCA.sqlcode <> 0 Then
	MessageBox ("Sorry! Cannot Connect To Database", SQLCA.sqlerrtext)
	Halt Close
	Return
End If


gs_themename = GetTheme()
Choose Case gs_themeName
	Case "Flat Design Silver"
		gs_EChartsThem = 'default'
	Case "Flat Design Blue"
		gs_EChartsThem = 'light'
	Case "Flat Design Dark"
		gs_EChartsThem = 'dark'
	Case "Flat Design Grey"
		gs_EChartsThem = 'default'
	Case Else
End Choose


Open(w_mdi)

end event

