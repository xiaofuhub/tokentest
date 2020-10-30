﻿$PBExportHeader$w_welcome.srw
forward
global type w_welcome from w_echarts_base
end type
type st_3 from statictext within w_welcome
end type
type mle_2 from multilineedit within w_welcome
end type
type st_2 from statictext within w_welcome
end type
type mle_1 from multilineedit within w_welcome
end type
type st_1 from statictext within w_welcome
end type
type cb_1 from commandbutton within w_welcome
end type
type st_4 from statictext within w_welcome
end type
type cb_3 from commandbutton within w_welcome
end type
end forward

global type w_welcome from w_echarts_base
string tag = "welcome"
integer width = 3666
integer height = 2096
st_3 st_3
mle_2 mle_2
st_2 st_2
mle_1 mle_1
st_1 st_1
cb_1 cb_1
st_4 st_4
cb_3 cb_3
end type
global w_welcome w_welcome

type variables
Boolean ib_flag = True

end variables

on w_welcome.create
int iCurrent
call super::create
this.st_3=create st_3
this.mle_2=create mle_2
this.st_2=create st_2
this.mle_1=create mle_1
this.st_1=create st_1
this.cb_1=create cb_1
this.st_4=create st_4
this.cb_3=create cb_3
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_3
this.Control[iCurrent+2]=this.mle_2
this.Control[iCurrent+3]=this.st_2
this.Control[iCurrent+4]=this.mle_1
this.Control[iCurrent+5]=this.st_1
this.Control[iCurrent+6]=this.cb_1
this.Control[iCurrent+7]=this.st_4
this.Control[iCurrent+8]=this.cb_3
end on

on w_welcome.destroy
call super::destroy
destroy(this.st_3)
destroy(this.mle_2)
destroy(this.st_2)
destroy(this.mle_1)
destroy(this.st_1)
destroy(this.cb_1)
destroy(this.st_4)
destroy(this.cb_3)
end on

event open;call super::open;
mle_1.Text = "<body>~r~n" +&
		"    <!-- prepare a DOM with width and height for ECharts -->~r~n" +&
		"    <div id=~"main~" style=~"width: 400px;height:300px;~"></div>~r~n" +&
		"</body>~r~n"
		
mle_2.Text = "<!DOCTYPE html>~r~n" +&
		"<html>~r~n" +&
		"<head>~r~n" +&
		"    <meta charset=~"utf-8~">~r~n" +&
		"    <title> ECharts</title>~r~n" +&
		"    <!-- including echarts.js  file-->~r~n" +&
		"    <script src=~"echarts.min.js~"></script>~r~n" +&
		"</head>~r~n" +&
		"<body>~r~n" +&
		"    <!-- prepare a DOM container with width and height -->~r~n" +&
		"    <div id=~"main~" style=~"width: 400px;height:300px;~"></div>~r~n" +&
		"    <script type=~"text/javascript~">~r~n" +&
		"        // based on prepared DOM, initialize echarts instance~r~n" +&
		"        var myChart = echarts.init(document.getElementById(~'main~'),'light');~r~n" +&
		"~r~n" +&
		"        // specify chart configuration item and data~r~n" +&
		"        var option = {~r~n" +&
		"            title: {~r~n" +&
		"                text: ~'Simple example~'~r~n" +&
		"            },~r~n" +&
		"            tooltip: {},~r~n" +&
		"            legend: {~r~n" +&
		"                data:[~'Sales~']~r~n" +&
		"            },~r~n" +&
		"            xAxis: {~r~n" +&
		"                data: [~"shirt~",~"cardign~",~"chiffon shirt~",~"pants~",~"heels~",~"socks~"]~r~n" +&
		"            },~r~n" +&
		"            yAxis: {},~r~n" +&
		"            series: [{~r~n" +&
		"                name: ~'Sales~',~r~n" +&
		"                type: ~'bar~',~r~n" +&
		"                data: [5, 20, 36, 10, 10, 20]~r~n" +&
		"            }]~r~n" +&
		"        };~r~n" +&
		"~r~n" +&
		"        // use configuration item and data specified to show chart~r~n" +&
		"        myChart.setOption(option);~r~n" +&
		"    </script>~r~n" +&
		"</body>~r~n" +&
		"</html>~r~n"
end event

type wb_1 from w_echarts_base`wb_1 within w_welcome
integer x = 1815
integer y = 792
integer width = 1769
integer height = 1180
string defaulturl = "file:///example.html"
end type

event wb_1::navigationprogressindex;call super::navigationprogressindex;string ls_JS

IF progressindex =100 THEN 
	IF ib_flag THEN
		ib_flag = False
		
	END IF
END IF
end event

type st_3 from statictext within w_welcome
integer x = 69
integer y = 620
integer width = 1463
integer height = 64
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 128
long backcolor = 67108864
string text = "Then we can initialize an ECharts instance using echarts.init, "
boolean focusrectangle = false
end type

type mle_2 from multilineedit within w_welcome
integer x = 64
integer y = 788
integer width = 1723
integer height = 1180
integer taborder = 10
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
boolean italic = true
long textcolor = 33554432
long backcolor = 134217731
boolean border = false
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_welcome
integer x = 73
integer y = 196
integer width = 2331
integer height = 64
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 128
long backcolor = 67108864
string text = "Before drawing charts, we need to prepare a DOM container with width and height for ECharts."
boolean focusrectangle = false
end type

type mle_1 from multilineedit within w_welcome
integer x = 64
integer y = 280
integer width = 1728
integer height = 312
integer taborder = 10
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
boolean italic = true
long textcolor = 33554432
long backcolor = 134217731
boolean border = false
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_welcome
integer x = 69
integer y = 48
integer width = 1426
integer height = 104
boolean bringtotop = true
integer textsize = -14
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Draw a simple chart via WebBrowser"
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_welcome
boolean visible = false
integer x = 2519
integer y = 44
integer width = 1065
integer height = 112
integer taborder = 10
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "More infomation visit ECharts website"
end type

event clicked;
//Opensheet (w_ECharts, Parent.ParentWindow(), 1, Layered! )
end event

type st_4 from statictext within w_welcome
integer x = 73
integer y = 688
integer width = 1801
integer height = 64
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 128
long backcolor = 67108864
string text = "and create a simple bar chart with setOption. Below is the complete code."
boolean focusrectangle = false
end type

type cb_3 from commandbutton within w_welcome
integer x = 3182
integer y = 44
integer width = 402
integer height = 112
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Simple Mode"
end type

event clicked;open(w_example)
end event

