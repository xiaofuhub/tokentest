﻿$PBExportHeader$w_bar.srw
forward
global type w_bar from w_echarts_base
end type
type dw_1 from datawindow within w_bar
end type
type dw_series1 from datawindow within w_bar
end type
type dw_2 from datawindow within w_bar
end type
type wb_2 from n_webbrowser within w_bar
end type
type st_1 from statictext within w_bar
end type
type st_3 from statictext within w_bar
end type
type dw_3 from datawindow within w_bar
end type
type st_2 from statictext within w_bar
end type
end forward

global type w_bar from w_echarts_base
string tag = "bar"
integer width = 3986
integer height = 2396
dw_1 dw_1
dw_series1 dw_series1
dw_2 dw_2
wb_2 wb_2
st_1 st_1
st_3 st_3
dw_3 dw_3
st_2 st_2
end type
global w_bar w_bar

type variables
Boolean ib_flag = True

end variables

forward prototypes
public subroutine wf_apply (datawindow as_dw)
end prototypes

public subroutine wf_apply (datawindow as_dw);/*wb_1 generate echart*/
String ls_Title, ls_Option

//Title
ls_Title = dw_1.Describe("gr_1.title")
wb_1.of_SetTitle(ls_Title)
//Theme
wb_1.of_SetTheme(gs_EChartsThem)
//Style
wb_1.of_SetStyle("bar")
//Width
wb_1.of_SetWidth(800)
//Height
wb_1.of_SetHeight(230)
//ToolBox
wb_1.of_SetToolBox(True)
//DataZoom
wb_1.of_SetDataZoom(False)
//SeriesName
wb_1.of_SetSeriesName ( "Employees" )
//CreateOption
ls_Option = wb_1.of_CreateOption(as_dw)
//SetOption
wb_1.of_SetOption(ls_Option)
//Apply
wb_1.of_Apply()
end subroutine

on w_bar.create
int iCurrent
call super::create
this.dw_1=create dw_1
this.dw_series1=create dw_series1
this.dw_2=create dw_2
this.wb_2=create wb_2
this.st_1=create st_1
this.st_3=create st_3
this.dw_3=create dw_3
this.st_2=create st_2
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.dw_1
this.Control[iCurrent+2]=this.dw_series1
this.Control[iCurrent+3]=this.dw_2
this.Control[iCurrent+4]=this.wb_2
this.Control[iCurrent+5]=this.st_1
this.Control[iCurrent+6]=this.st_3
this.Control[iCurrent+7]=this.dw_3
this.Control[iCurrent+8]=this.st_2
end on

on w_bar.destroy
call super::destroy
destroy(this.dw_1)
destroy(this.dw_series1)
destroy(this.dw_2)
destroy(this.wb_2)
destroy(this.st_1)
destroy(this.st_3)
destroy(this.dw_3)
destroy(this.st_2)
end on

event open;call super::open;/*Initialize and show dw_1and dw_series1(disvisable) */
Long 		ll_SeriesCount, ll_i, ll_DataCount, ll_Row
Integer	li_category
Double 	ldb_Value
String 	ls_SeriesName, ls_Category,ls_value, ls_dept, ls_grgraphname

st_2.y = st_1.y
dw_1.y = wb_1.y
dw_1.height = wb_1.height
dw_2.y = wb_2.y
dw_2.height = wb_2.height

dw_1.SetTransObject (SQLCA)
dw_1.Retrieve()


ib_flag = True
ll_SeriesCount = dw_1.SeriesCount( "gr_1")
If ll_SeriesCount = 1 Then
	//Series
	 ls_SeriesName = dw_1.SeriesName( "gr_1", 1)
	 ll_DataCount = dw_1.DataCount( "gr_1",ls_SeriesName)
	 For ll_i = 1 To ll_DataCount
		  //Category
		  ls_Category = dw_1.CategoryName( "gr_1", ll_i)
		  //Data
		  ldb_Value = dw_1.GetData( "gr_1", 1, ll_i)
		  
		  ll_Row = dw_series1.InsertRow(0)
		  dw_series1.SetItem(ll_Row, 1, ls_Category )
		  dw_series1.SetItem(ll_Row, 2, ldb_Value )
	 Next
Else
	MessageBox( "Tips", "Series is not one!" )
End If

ls_dept = dw_1.CategoryName ("gr_1", 1)

dw_2.Modify (ls_grgraphname + ".title=" + &
"'Employees in " + ls_dept + " Department ' ")
dw_2.SetTransObject(sqlca)
end event

type wb_1 from w_echarts_base`wb_1 within w_bar
integer x = 1554
integer y = 112
integer width = 2368
integer height = 1028
end type

event wb_1::ue_clicked;/*when click wb_1 then paser th string as_arg then initialize and show dw_2 and wb_2*/

String	  ls_dept[5], ls_grgraphname="gr_1" 
String ls_Title, ls_Option, ls_Json, ls_key, ls_Name
Long ll_RootObject
JsonParser lnv_JsonParser

lnv_JsonParser = Create JsonParser

ls_Json = as_arg

lnv_JsonParser.LoadString( ls_Json)
ll_RootObject = lnv_JsonParser.GetRootItem()

ls_key = lnv_JsonParser.GetChildKey(ll_RootObject, 2)
ls_Name = lnv_JsonParser.GetItemString(ll_RootObject, ls_key)


dw_3.Modify (ls_grgraphname + ".title=" + &
"'Employees in " + ls_Name + " Department ' ")

dw_3.SetTransObject(sqlca)
dw_3.Retrieve(ls_Name)

st_3.Text = "Double Click to view" + " "+ ls_Name + " detail:"


/*wb_2 generate echart*/
//Title
ls_Title = 'Employees in ' + ls_Name + ' Department '
wb_2.of_SetTitle(ls_Title)
//Theme
wb_2.of_SetTheme(gs_EChartsThem)
//Style
wb_2.of_SetStyle("bar")
//Width
wb_2.of_SetWidth(800)
//Height
wb_2.of_SetHeight(250)
//ToolBox
wb_2.of_SetToolBox(True)
//DataZoom
wb_2.of_Setdatazoom(False)
//SeriesName
wb_2.of_SetSeriesName ( ls_Name )
//CreateOption
ls_Option = wb_2.of_CreateOption(dw_3)
//SetOption
wb_2.of_SetOption(ls_Option)
//Apply
wb_2.of_Apply()


/*After wb_2 showing then register event:dbclicked*/
string ls_JS

ls_JS = "myChart.on('dblclick',function(params){window.webBrowser.ue_dbclicked('{~"seriesName~":~"' + params.seriesName + '~",~"name~":~"' + params.name + '~",~"value~":' + params.value + '}');});"
wb_2.EvaluateJavaScriptSync( ls_JS)

wb_2.RegisterEvent("ue_dbclicked")




end event

event wb_1::navigationprogressindex;call super::navigationprogressindex;
IF progressindex =100 THEN 
	IF ib_flag THEN
		ib_flag = False
		wf_apply(dw_series1)
	END IF
END IF
end event

type dw_1 from datawindow within w_bar
integer x = 18
integer y = 120
integer width = 1504
integer height = 900
integer taborder = 10
boolean bringtotop = true
string title = "none"
string dataobject = "d_bar_headcount"
boolean border = false
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;
// Clicked script for dw_headcount
// This will cause the employee datawindow to populate based
// on which bar column you clicked on.

grObjectType	ClickedObject
string			ls_dept, ls_grgraphname="gr_1" 
int				li_series, li_category




/************************************************************
	Find out where the user clicked in the graph
 ***********************************************************/
ClickedObject =this.ObjectAtPointer (ls_grgraphname, li_series, &
						li_category)

/************************************************************
	If user clicked on data or category, find out which one
 ***********************************************************/
If ClickedObject = TypeData!  or &
	ClickedObject = TypeCategory!  then
		ls_dept = this.CategoryName (ls_grgraphname, li_category)
		dw_2.Modify (ls_grgraphname + ".title=" + &
				"'Employees in " + ls_dept + " Department ' ")
		dw_2.SetTransObject(sqlca)
		dw_2.Retrieve (ls_dept)
		
End If

end event

type dw_series1 from datawindow within w_bar
boolean visible = false
integer x = 1778
integer y = 304
integer width = 1655
integer height = 400
integer taborder = 20
boolean bringtotop = true
boolean enabled = false
string title = "none"
string dataobject = "d_category1"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_2 from datawindow within w_bar
integer x = 23
integer y = 1272
integer width = 1499
integer height = 972
integer taborder = 30
boolean bringtotop = true
string title = "none"
string dataobject = "d_bar_employees"
boolean border = false
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type wb_2 from n_webbrowser within w_bar
event ue_dbclicked ( string as_arg )
integer x = 1559
integer y = 1244
integer width = 2382
integer height = 984
boolean bringtotop = true
borderstyle borderstyle = stylebox!
end type

event ue_dbclicked(string as_arg);/*when double click on wb_2 then parser string:as_arg then show employee details*/

Long ll_RootObject, ll_id
String ls_Json, ls_key
JsonParser lnv_JsonParser
lnv_JsonParser = Create JsonParser

ls_Json = as_arg

// Loads a JSON string
lnv_JsonParser.LoadString(ls_Json)
ll_RootObject = lnv_JsonParser.GetRootItem()

// Gets the key of the child item
ls_key = lnv_JsonParser.GetChildKey(ll_RootObject, 2)
ll_id = long(lnv_JsonParser.GetItemString(ll_RootObject, ls_key)) 

OpenWithParm(w_empl_detail, ll_id)


end event

event ue_clicked;//
end event

type st_1 from statictext within w_bar
integer x = 1682
integer y = 32
integer width = 2459
integer height = 64
boolean bringtotop = true
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Click on a Department to see employee salaries in that department."
boolean focusrectangle = false
end type

type st_3 from statictext within w_bar
integer x = 1573
integer y = 1172
integer width = 1042
integer height = 64
boolean bringtotop = true
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Double Click to view detail:"
boolean focusrectangle = false
end type

type dw_3 from datawindow within w_bar
boolean visible = false
integer x = 1801
integer y = 564
integer width = 1467
integer height = 1024
integer taborder = 40
boolean bringtotop = true
boolean enabled = false
string title = "none"
string dataobject = "d_bar_employees"
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_bar
integer x = 23
integer y = 32
integer width = 1650
integer height = 84
boolean bringtotop = true
integer textsize = -9
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Click on a Department to see employee salaries in that department."
boolean focusrectangle = false
end type

