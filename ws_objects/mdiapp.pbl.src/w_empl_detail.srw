﻿$PBExportHeader$w_empl_detail.srw
forward
global type w_empl_detail from window
end type
type cb_3 from commandbutton within w_empl_detail
end type
type dw_empl from datawindow within w_empl_detail
end type
end forward

global type w_empl_detail from window
integer width = 2656
integer height = 1832
boolean titlebar = true
string title = "Employees~' Information"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_3 cb_3
dw_empl dw_empl
end type
global w_empl_detail w_empl_detail

type variables

end variables

on w_empl_detail.create
this.cb_3=create cb_3
this.dw_empl=create dw_empl
this.Control[]={this.cb_3,&
this.dw_empl}
end on

on w_empl_detail.destroy
destroy(this.cb_3)
destroy(this.dw_empl)
end on

event open;/*accept dbclick to pass the informatiton(ll_id) for Initializing and showing dw_empl*/
Long ll_id
String ls_lastName, ls_FirstName

ll_id = Message.DoubleParm

dw_empl.SetTransObject(sqlca)
dw_empl.Retrieve(ll_id)

If dw_empl.RowCount() > 0 Then
	ls_lastName = dw_empl.GetItemString(1, "emp_lname")
	ls_FirstName = dw_empl.GetItemString(1, "emp_fname")
	Title = "Employee Details" + " - " + ls_lastName + ", " + ls_FirstName
End If
end event

type cb_3 from commandbutton within w_empl_detail
integer x = 2016
integer y = 1600
integer width = 430
integer height = 116
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
string text = "Close"
end type

event clicked;close(parent)
end event

type dw_empl from datawindow within w_empl_detail
integer x = 55
integer y = 32
integer width = 2528
integer height = 1528
integer taborder = 10
string title = "none"
string dataobject = "d_empl_f_arg"
boolean border = false
boolean livescroll = true
end type

