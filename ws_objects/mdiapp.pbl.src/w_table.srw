$PBExportHeader$w_table.srw
forward
global type w_table from w_echarts_base
end type
end forward

global type w_table from w_echarts_base
string tag = "table"
integer width = 4667
integer height = 2096
event ue_select_table ( )
end type
global w_table w_table

type variables
String is_SQL, is_Style
end variables

forward prototypes
public subroutine wf_sql_datastore ()
public subroutine wf_sql_datastore (string as_sql, string as_style)
public subroutine wf_selecttable ()
end prototypes

event ue_select_table();
wf_SelectTable( )
end event

public subroutine wf_sql_datastore ();
end subroutine

public subroutine wf_sql_datastore (string as_sql, string as_style);String ls_Option, ls_Json, ls_key, ls_Title, ls_Graphtype, ls_Theme, ls_style, ls_DWSyntax, ls_Error
Long 	ll_RootObject,ll_ChildObject, ll_ChildArray, ll_ChildArray2,ll_ChildObject2,ll_ChildObject3, ll_ChildArray3, ll_ChildObject4, ll_i, ll_j
Boolean lb_ToolBox
JsonGenerator ljson_Option
DataStore lds_data
JsonParser lnv_JsonParser

lnv_JsonParser = Create JsonParser

ls_Json = as_style
lnv_JsonParser.LoadString(ls_Json)
ll_RootObject = lnv_JsonParser.GetRootItem()

//title
ls_Title = lnv_JsonParser.GetItemString(ll_RootObject, "Title")
//graphtype
ls_GraphType = lnv_JsonParser.GetItemString(ll_RootObject, "GraphType")
//theme
ls_Theme = lnv_JsonParser.GetItemString(ll_RootObject, "Theme")
//toolbox
lb_ToolBox = lnv_JsonParser.GetItemBoolean(ll_RootObject, "ToolBox")


/*The SQL statement generated after Select Table will generate Line chart by default*/
ls_style = 'style(type=grid )'
If Len (as_sql ) > 0 Then
	lds_data = Create DataStore
	ls_DWSyntax = SQLCA.SyntaxFromSQL( as_sql, ls_style, ls_Error )
	If Len ( ls_Error ) > 0 Then
		MessageBox ( "Caution", "SyntaxFromSQL caused these errors: " + ls_Error )
		Return
	End If
	lds_data.Create( ls_DWSyntax, ls_Error)
	If Len ( ls_Error ) > 0 Then
		MessageBox ( "Caution", "Create cause these errors:: " + ls_Error )
		Return
	End If
	lds_data.SetTransObject ( SQLCA )
	lds_data.Retrieve()

	IF lds_data.RowCount() > 0 Then
		//Title
		IF ls_Title <> "" THEN
			wb_1.of_SetTitle(ls_Title)
		END IF
		//Theme 
		IF ls_Theme <> "" THEN
			wb_1.of_SetTheme(ls_Theme)
		END IF
		//GraphType
		IF ls_GraphType <>"" THEN
			wb_1.of_SetStyle(lower(ls_GraphType))
		END IF
		//ToolBox
		wb_1.of_SetToolBox(lb_ToolBox)
		//CreateOption
		ls_Option = wb_1.of_CreateOption( lds_data )
		//SetOption
		wb_1.of_SetOption(ls_Option)
		//Apply
		wb_1.of_Apply()			
	End If
END IF
If IsValid ( lds_data ) Then Destroy ( lds_data )
end subroutine

public subroutine wf_selecttable ();String ls_SQL

Open(w_select_table)
ls_SQL = Message.StringParm

IF Len(ls_SQL) > 0 THEN
	is_SQL = ls_SQL
	wf_sql_datastore(is_SQL, is_Style)
END IF
end subroutine

on w_table.create
call super::create
end on

on w_table.destroy
call super::destroy
end on

event open;call super::open;/*set default graph type and generate json string*/
String ls_Title, ls_GraphType, ls_Theme
Long ll_Height, ll_Width
Boolean lb_ToolBox, lb_DataZoom
Long ll_RootObject
JsonGenerator ljson_str

ljson_str = Create JsonGenerator
ll_RootObject = ljson_str.CreateJsonObject()

ls_Title = "Default title"
ls_GraphType = "line"
ls_Theme = gs_EChartsThem
ll_Height = 500
ll_Width = 800
lb_ToolBox = True
lb_DataZoom = True

ljson_str.AddItemString(ll_RootObject, "Title", ls_Title)
ljson_str.AddItemString(ll_RootObject, "GraphType", ls_GraphType)
ljson_str.AddItemString(ll_RootObject, "Theme", ls_Theme)
ljson_str.AddItemNumber(ll_RootObject, "Height", ll_Height)
ljson_str.AddItemNumber(ll_RootObject, "Width", ll_Width)
ljson_str.AddItemBoolean(ll_RootObject, "ToolBox", lb_Toolbox)
ljson_str.AddItemBoolean(ll_RootObject, "DataZoom", lb_Datazoom)

is_Style = ljson_str.GetJsonString()

IF IsValid( ljson_str ) THEN Destroy (ljson_str)

wf_SelectTable( )
end event

event ue_setoption;IF Len (as_arg) > 0 Then
	is_Style = as_arg
	wf_sql_datastore(is_SQL, is_Style)
End If
end event

event activate;
parentwindow().dynamic post event ue_refresh_visible(is_Style) 
end event

type wb_1 from w_echarts_base`wb_1 within w_table
integer x = 9
integer y = 8
integer width = 4645
integer height = 1976
end type

