$PBExportHeader$w_message.srw
forward
global type w_message from window
end type
type cb_1 from commandbutton within w_message
end type
type st_1 from statictext within w_message
end type
type rte_1 from richtextedit within w_message
end type
end forward

global type w_message from window
integer width = 3419
integer height = 1680
boolean titlebar = true
string title = "Output"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AsteriskIcon!"
boolean center = true
cb_1 cb_1
st_1 st_1
rte_1 rte_1
end type
global w_message w_message

on w_message.create
this.cb_1=create cb_1
this.st_1=create st_1
this.rte_1=create rte_1
this.Control[]={this.cb_1,&
this.st_1,&
this.rte_1}
end on

on w_message.destroy
destroy(this.cb_1)
destroy(this.st_1)
destroy(this.rte_1)
end on

event open;String 	ls_msg


ls_msg = Message.stringparm

rte_1.ClearAll()
rte_1.ReplaceText( ls_msg )
end event

event resize;

rte_1.width = newwidth - rte_1.x - 10
rte_1.height = newheight - rte_1.y - cb_1.height -20

cb_1.y = newheight - cb_1.height - 10
cb_1.x = newwidth - cb_1.width - 10
end event

type cb_1 from commandbutton within w_message
integer x = 2862
integer y = 1448
integer width = 343
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Close"
boolean default = true
end type

event clicked;
Close(Parent)
end event

type st_1 from statictext within w_message
integer x = 23
integer y = 36
integer width = 343
integer height = 56
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Message:"
boolean focusrectangle = false
end type

type rte_1 from richtextedit within w_message
integer x = 23
integer y = 124
integer width = 3273
integer height = 1296
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean init_hscrollbar = true
boolean init_vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

