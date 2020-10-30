$PBExportHeader$w_predata.srw
forward
global type w_predata from window
end type
type cb_1 from commandbutton within w_predata
end type
type dw_1 from datawindow within w_predata
end type
end forward

global type w_predata from window
integer width = 2414
integer height = 1360
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
windowtype windowtype = popup!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
dw_1 dw_1
end type
global w_predata w_predata

on w_predata.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_predata.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;String 	ls_SQL, ls_DWSyntax, ls_Error


ls_SQL = Message.StringParm
If Len ( ls_SQL) > 0 Then
	ls_DWSyntax = SQLCA.SyntaxFromSQL( ls_SQL, "style(type=grid)", ls_Error )
	If Len ( ls_Error ) > 0 Then
		MessageBox ( "Caution", "SyntaxFromSQL caused these errors: " + ls_Error )
		Return
	End If
	dw_1.Create( ls_DWSyntax, ls_Error)
	If Len ( ls_Error ) > 0 Then
		MessageBox ( "Caution", "Create cause these errors:: " + ls_Error )
		Return
	End If
	
	dw_1.SetTransObject ( SQLCA )
	dw_1.Retrieve()
ELSE
	Messagebox("Tips","Sorry, you haven't generated SQL Syntax")
End If

end event

type cb_1 from commandbutton within w_predata
integer x = 1952
integer y = 1140
integer width = 361
integer height = 96
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
string text = "Cancel"
end type

event clicked;Close(parent)
end event

type dw_1 from datawindow within w_predata
integer x = 55
integer y = 44
integer width = 2258
integer height = 1052
integer taborder = 10
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

