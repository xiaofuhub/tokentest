$PBExportHeader$w_example.srw
forward
global type w_example from window
end type
type wb_1 from n_webbrowser within w_example
end type
type st_13 from statictext within w_example
end type
type sle_value from singlelineedit within w_example
end type
type sle_category from singlelineedit within w_example
end type
type st_12 from statictext within w_example
end type
type st_11 from statictext within w_example
end type
type mle_1 from multilineedit within w_example
end type
type st_10 from statictext within w_example
end type
type mle_4 from multilineedit within w_example
end type
type st_9 from statictext within w_example
end type
type em_width from editmask within w_example
end type
type cb_1 from commandbutton within w_example
end type
type cbx_rosetype from checkbox within w_example
end type
type cbx_datazoom from checkbox within w_example
end type
type cbx_toolbox from checkbox within w_example
end type
type st_5 from statictext within w_example
end type
type ddlb_style from dropdownlistbox within w_example
end type
type st_4 from statictext within w_example
end type
type ddlb_theme from dropdownlistbox within w_example
end type
type em_height from editmask within w_example
end type
type st_3 from statictext within w_example
end type
type st_2 from statictext within w_example
end type
type sle_title from singlelineedit within w_example
end type
type st_1 from statictext within w_example
end type
end forward

global type w_example from window
integer width = 4498
integer height = 2192
boolean titlebar = true
string title = "Simple Mode"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
wb_1 wb_1
st_13 st_13
sle_value sle_value
sle_category sle_category
st_12 st_12
st_11 st_11
mle_1 mle_1
st_10 st_10
mle_4 mle_4
st_9 st_9
em_width em_width
cb_1 cb_1
cbx_rosetype cbx_rosetype
cbx_datazoom cbx_datazoom
cbx_toolbox cbx_toolbox
st_5 st_5
ddlb_style ddlb_style
st_4 st_4
ddlb_theme ddlb_theme
em_height em_height
st_3 st_3
st_2 st_2
sle_title sle_title
st_1 st_1
end type
global w_example w_example

on w_example.create
this.wb_1=create wb_1
this.st_13=create st_13
this.sle_value=create sle_value
this.sle_category=create sle_category
this.st_12=create st_12
this.st_11=create st_11
this.mle_1=create mle_1
this.st_10=create st_10
this.mle_4=create mle_4
this.st_9=create st_9
this.em_width=create em_width
this.cb_1=create cb_1
this.cbx_rosetype=create cbx_rosetype
this.cbx_datazoom=create cbx_datazoom
this.cbx_toolbox=create cbx_toolbox
this.st_5=create st_5
this.ddlb_style=create ddlb_style
this.st_4=create st_4
this.ddlb_theme=create ddlb_theme
this.em_height=create em_height
this.st_3=create st_3
this.st_2=create st_2
this.sle_title=create sle_title
this.st_1=create st_1
this.Control[]={this.wb_1,&
this.st_13,&
this.sle_value,&
this.sle_category,&
this.st_12,&
this.st_11,&
this.mle_1,&
this.st_10,&
this.mle_4,&
this.st_9,&
this.em_width,&
this.cb_1,&
this.cbx_rosetype,&
this.cbx_datazoom,&
this.cbx_toolbox,&
this.st_5,&
this.ddlb_style,&
this.st_4,&
this.ddlb_theme,&
this.em_height,&
this.st_3,&
this.st_2,&
this.sle_title,&
this.st_1}
end on

on w_example.destroy
destroy(this.wb_1)
destroy(this.st_13)
destroy(this.sle_value)
destroy(this.sle_category)
destroy(this.st_12)
destroy(this.st_11)
destroy(this.mle_1)
destroy(this.st_10)
destroy(this.mle_4)
destroy(this.st_9)
destroy(this.em_width)
destroy(this.cb_1)
destroy(this.cbx_rosetype)
destroy(this.cbx_datazoom)
destroy(this.cbx_toolbox)
destroy(this.st_5)
destroy(this.ddlb_style)
destroy(this.st_4)
destroy(this.ddlb_theme)
destroy(this.em_height)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.sle_title)
destroy(this.st_1)
end on

event open;
ddlb_theme.selectitem( 1)
ddlb_style.selectitem( 1)
wb_1.Resize(2537,1476)
end event

type wb_1 from n_webbrowser within w_example
integer x = 1819
integer y = 128
integer width = 2537
integer height = 1476
borderstyle borderstyle = stylebox!
end type

event ue_clicked;//

end event

type st_13 from statictext within w_example
integer x = 407
integer y = 848
integer width = 155
integer height = 64
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Value:"
boolean focusrectangle = false
end type

type sle_value from singlelineedit within w_example
integer x = 576
integer y = 832
integer width = 681
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "num"
end type

type sle_category from singlelineedit within w_example
integer x = 576
integer y = 728
integer width = 681
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "name"
end type

type st_12 from statictext within w_example
integer x = 315
integer y = 740
integer width = 261
integer height = 64
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Category:"
boolean focusrectangle = false
end type

type st_11 from statictext within w_example
integer x = 1819
integer y = 56
integer width = 430
integer height = 60
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Generate Echarts:"
boolean focusrectangle = false
end type

type mle_1 from multilineedit within w_example
integer x = 96
integer y = 128
integer width = 1678
integer height = 536
integer taborder = 10
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "SELECT (dept_name) AS name,Count(emp_id) AS num FROM employee, department WHERE employee.dept_id = department.dept_id GROUP BY dept_name"
boolean border = false
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
end type

type st_10 from statictext within w_example
integer x = 105
integer y = 52
integer width = 690
integer height = 64
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Input SQL Syntax  manually:"
boolean focusrectangle = false
end type

type mle_4 from multilineedit within w_example
integer x = 1819
integer y = 1696
integer width = 2537
integer height = 432
integer taborder = 60
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
end type

type st_9 from statictext within w_example
integer x = 1824
integer y = 1632
integer width = 814
integer height = 60
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "PB Script:"
boolean focusrectangle = false
end type

type em_width from editmask within w_example
integer x = 581
integer y = 1064
integer width = 325
integer height = 88
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "800"
alignment alignment = center!
boolean spin = true
string displaydata = "~t/"
end type

type cb_1 from commandbutton within w_example
integer x = 672
integer y = 1940
integer width = 402
integer height = 104
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
string text = "Create"
end type

event clicked;String		ls_Title, ls_Theme, ls_Style, ls_Option
Long		ll_Width, ll_Height
Boolean	lb_ToolBox, lb_DataZoom, lb_RoseType
String		ls_SQL, ls_Category, ls_Value, ls_Table

//Title
ls_Title = sle_Title.Text
//Width
ll_Width = Long(em_Width.Text)
//Height
ll_Height = Long(em_Height.Text)
//Theme
ls_Theme = ddlb_Theme.Text
//Style
ls_Style = ddlb_Style.Text
//ToolBox
lb_ToolBox = cbx_ToolBox.Checked
//DataZoom
lb_DataZoom = cbx_datazoom.Checked
//roseType (Only for pie)
lb_RoseType = cbx_roseType.Checked

ls_SQL = mle_1.text
ls_Category = sle_category.text
ls_Value = sle_value.text

//Title
wb_1.of_SetTitle(ls_Title)
//Theme
wb_1.of_SetTheme(ls_Theme)
//Style
wb_1.of_SetStyle(lower(ls_Style))
//Width
wb_1.of_SetWidth(ll_Width )
//Height
wb_1.of_SetHeight(ll_Height)
//ToolBox
wb_1.of_SetToolBox(lb_Toolbox)
//RoseType
IF lb_RoseType THEN
	wb_1.of_SetRoseType("radius")
ELSE
	wb_1.of_SetRoseType("")
END IF
//CreateOption
ls_Option = wb_1.of_CreateOption(ls_SQL, ls_Category, ls_Value)
//SetOption
wb_1.of_SetOption(ls_Option)
//Apply
wb_1.of_Apply()


mle_4.Text = "String ls_Title, ls_Theme, ls_Style, ls_Option~r~n" +&
		"Long		ll_Width, ll_Height~r~n" +&
		"Boolean	lb_ToolBox, lb_DataZoom, lb_RoseType~r~n" +&
		"String		ls_SQL, ls_Category, ls_Value, ls_Table~r~n" +&
		"~r~n" +&
		"//Title~r~n" +&
		"ls_Title = sle_Title.Text~r~n" +&
		"//Width~r~n" +&
		"ll_Width = Long(em_Width.Text)~r~n" +&
		"//Height~r~n" +&
		"ll_Height = Long(em_Height.Text)~r~n" +&
		"//Theme~r~n" +&
		"ls_Theme = ddlb_Theme.Text~r~n" +&
		"//Style~r~n" +&
		"ls_Style = ddlb_Style.Text~r~n" +&
		"//ToolBox~r~n" +&
		"lb_ToolBox = cbx_ToolBox.Checked~r~n" +&
		"//DataZoom~r~n" +&
		"lb_DataZoom = cbx_datazoom.Checked~r~n" +&
		"//roseType (Only for pie)~r~n" +&
		"lb_RoseType = cbx_roseType.Checked~r~n" +&
		"~r~n" +&
		"ls_SQL = mle_1.text~r~n" +&
		"ls_Category = sle_category.text~r~n" +&
		"ls_Value = sle_value.text~r~n" +&
		"~r~n" +&
		"//Title~r~n" +&
		"wb_1.of_SetTitle(ls_Title)~r~n" +&
		"//Theme~r~n" +&
		"wb_1.of_SetTheme(ls_Theme)~r~n" +&
		"//Style~r~n" +&
		"wb_1.of_SetStyle(lower(ls_Style))~r~n" +&
		"//Width~r~n" +&
		"wb_1.of_SetWidth(ll_Width )~r~n" +&
		"//Height~r~n" +&
		"wb_1.of_SetHeight(ll_Height)~r~n" +&
		"//ToolBox~r~n" +&
		"wb_1.of_SetToolBox(lb_Toolbox)~r~n" +&
		"//RoseType~r~n" +&
		"IF lb_RoseType THEN~r~n" +&
		"	wb_1.of_SetRoseType(~"radius~")~r~n" +&
		"ELSE~r~n" +&
		"	wb_1.of_SetRoseType(~"~")~r~n" +&
		"END IF~r~n" +&
		"//CreateOption~r~n" +&
		"ls_Option = wb_1.of_CreateOption(ls_SQL, ls_Category, ls_Value)~r~n" +&
		"//SetOption~r~n" +&
		"wb_1.of_SetOption(ls_Option)~r~n" +&
		"//Apply~r~n" +&
		"wb_1.of_Apply_Async()~r~n"
end event

type cbx_rosetype from checkbox within w_example
integer x = 585
integer y = 1760
integer width = 489
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "rose Type: radius"
end type

type cbx_datazoom from checkbox within w_example
integer x = 585
integer y = 1640
integer width = 338
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "DataZoom"
end type

type cbx_toolbox from checkbox within w_example
integer x = 585
integer y = 1520
integer width = 311
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "ToolBox"
end type

type st_5 from statictext within w_example
integer x = 402
integer y = 1416
integer width = 174
integer height = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Style:"
alignment alignment = center!
boolean focusrectangle = false
end type

type ddlb_style from dropdownlistbox within w_example
integer x = 581
integer y = 1408
integer width = 635
integer height = 692
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean allowedit = true
boolean sorted = false
string item[] = {"line","bar","area","pie","scatter","funnel"}
end type

event selectionchanged;If ddlb_style.text(index) = 'pie' Then
	cbx_RoseType.Enabled = True
	cbx_dataZoom.Enabled = False
Else
	cbx_RoseType.Enabled = False
	cbx_dataZoom.Enabled = True
End If

If ddlb_style.text(index) = 'scatter' OR  ddlb_style.text(index) = 'funnel'  Then
	cbx_dataZoom.Enabled = False
Else
	cbx_dataZoom.Enabled = True
End If


end event

type st_4 from statictext within w_example
integer x = 366
integer y = 1312
integer width = 210
integer height = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Theme:"
alignment alignment = center!
boolean focusrectangle = false
end type

type ddlb_theme from dropdownlistbox within w_example
integer x = 581
integer y = 1300
integer width = 635
integer height = 376
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean allowedit = true
boolean sorted = false
boolean hscrollbar = true
string item[] = {"default","light","dark"}
end type

type em_height from editmask within w_example
integer x = 581
integer y = 1184
integer width = 325
integer height = 88
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "550"
alignment alignment = center!
boolean spin = true
string displaydata = "~t/"
end type

type st_3 from statictext within w_example
integer x = 370
integer y = 1192
integer width = 197
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Height:"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_2 from statictext within w_example
integer x = 370
integer y = 1072
integer width = 197
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Width:"
alignment alignment = center!
boolean focusrectangle = false
end type

type sle_title from singlelineedit within w_example
integer x = 581
integer y = 944
integer width = 809
integer height = 100
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "Default Title"
end type

type st_1 from statictext within w_example
integer x = 398
integer y = 956
integer width = 165
integer height = 72
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Title:"
alignment alignment = center!
boolean focusrectangle = false
end type

