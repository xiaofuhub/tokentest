$PBExportHeader$w_webbrowser.srw
forward
global type w_webbrowser from w_echarts_base
end type
type cb_go from commandbutton within w_webbrowser
end type
type pb_home from picturebutton within w_webbrowser
end type
type pb_refresh from picturebutton within w_webbrowser
end type
type pb_forward from picturebutton within w_webbrowser
end type
type pb_back from picturebutton within w_webbrowser
end type
type ddlb_url from dropdownlistbox within w_webbrowser
end type
end forward

global type w_webbrowser from w_echarts_base
integer width = 4667
integer height = 2096
event ue_navigateurl ( string as_url )
cb_go cb_go
pb_home pb_home
pb_refresh pb_refresh
pb_forward pb_forward
pb_back pb_back
ddlb_url ddlb_url
end type
global w_webbrowser w_webbrowser

type variables
Boolean ib_CanBack, ib_CanForward
String is_URL
end variables

forward prototypes
public subroutine wf_execjs (string as_js)
end prototypes

event ue_navigateurl(string as_url);//
wb_1.Navigate ( as_URL )
end event

public subroutine wf_execjs (string as_js);Integer 	li_Return
String 	ls_JS, ls_Value, ls_Result, ls_Error

li_Return = wb_1.EvaluateJavaScriptSync( as_js, ls_Result, ls_Error )
If li_Return = 1 Then
	If Len ( ls_Error ) = 0 Then
		ls_Value = wb_1.Of_getResultValue( ls_Result )
		MessageBox ( "Tips", ls_Value )
	Else
		MessageBox ( "Error", ls_Error )
	End If
Else
	MessageBox( "Failed", String(li_Return) )
End If

end subroutine

on w_webbrowser.create
int iCurrent
call super::create
this.cb_go=create cb_go
this.pb_home=create pb_home
this.pb_refresh=create pb_refresh
this.pb_forward=create pb_forward
this.pb_back=create pb_back
this.ddlb_url=create ddlb_url
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_go
this.Control[iCurrent+2]=this.pb_home
this.Control[iCurrent+3]=this.pb_refresh
this.Control[iCurrent+4]=this.pb_forward
this.Control[iCurrent+5]=this.pb_back
this.Control[iCurrent+6]=this.ddlb_url
end on

on w_webbrowser.destroy
call super::destroy
destroy(this.cb_go)
destroy(this.pb_home)
destroy(this.pb_refresh)
destroy(this.pb_forward)
destroy(this.pb_back)
destroy(this.ddlb_url)
end on

event open;call super::open;//is_URL = Message.StringParm
//
//wb_1.Navigate( is_URL )
//ddlb_url.Text = is_URL
end event

type wb_1 from w_echarts_base`wb_1 within w_webbrowser
integer x = 18
integer y = 128
integer width = 4613
integer height = 1916
string defaulturl = ""
end type

event wb_1::navigationstatechanged;call super::navigationstatechanged;//
Integer 	li_Return
String 	ls_JS, ls_Title, ls_Result, ls_Error

ib_CanBack = canGoBack
ib_CanForward = CanGoForward

ls_JS = "document.title"
li_Return = wb_1.EvaluateJavaScriptSync( ls_JS, ls_Result, ls_Error )
If li_Return = 1 Then
	ls_Title = wb_1.Of_getResultValue( ls_Result )
	Parent.Title = ls_Title
End If
end event

event wb_1::addresschange;call super::addresschange;//
ddlb_url.Text = NewUrl
end event

type cb_go from commandbutton within w_webbrowser
integer x = 4430
integer y = 8
integer width = 201
integer height = 96
integer taborder = 10
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "GO"
boolean default = true
end type

event clicked;
String 	ls_URL

ls_URL = Trim ( ddlb_URL.Text )

If Len ( ls_URL ) > 0 Then
	wb_1.Navigate( ls_URL )
End If
end event

type pb_home from picturebutton within w_webbrowser
integer x = 402
integer y = 8
integer width = 110
integer height = 96
integer taborder = 10
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Custom006a!"
string disabledname = "Custom006a!"
alignment htextalign = left!
end type

event clicked;//
String 	ls_url

ls_url = wb_1.defaulturl
wb_1.Navigate( ls_url )
end event

type pb_refresh from picturebutton within w_webbrowser
integer x = 274
integer y = 8
integer width = 110
integer height = 96
integer taborder = 10
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Regenerate1!"
string disabledname = "Regenerate1!"
alignment htextalign = left!
end type

event clicked;//
wb_1.Refresh()
end event

type pb_forward from picturebutton within w_webbrowser
integer x = 146
integer y = 8
integer width = 110
integer height = 96
integer taborder = 10
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Next!"
string disabledname = "Next!"
alignment htextalign = left!
end type

event clicked;//
If ib_CanForward Then
	wb_1.GoForward()
End If
end event

type pb_back from picturebutton within w_webbrowser
integer x = 18
integer y = 8
integer width = 110
integer height = 96
integer taborder = 10
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Prior!"
string disabledname = "Prior!"
alignment htextalign = left!
end type

event clicked;//
If ib_CanBack Then
	wb_1.Goback( )
End If
end event

type ddlb_url from dropdownlistbox within w_webbrowser
event ue_key pbm_keydown
integer x = 553
integer y = 12
integer width = 3863
integer height = 400
integer taborder = 40
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean allowedit = true
borderstyle borderstyle = stylelowered!
end type

event ue_key;
If KeyDown(Keyenter!) Then
	MessageBox ( "", "enter" )
End If
end event

