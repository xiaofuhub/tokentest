$PBExportHeader$w_input_sql.srw
forward
global type w_input_sql from window
end type
type cbx_series from checkbox within w_input_sql
end type
type ddlb_series from dropdownlistbox within w_input_sql
end type
type mle_value from multilineedit within w_input_sql
end type
type mle_category from multilineedit within w_input_sql
end type
type st_3 from statictext within w_input_sql
end type
type st_2 from statictext within w_input_sql
end type
type st_1 from statictext within w_input_sql
end type
type cb_3 from commandbutton within w_input_sql
end type
type mle_1 from multilineedit within w_input_sql
end type
type cb_2 from commandbutton within w_input_sql
end type
type cb_1 from commandbutton within w_input_sql
end type
end forward

global type w_input_sql from window
integer width = 2313
integer height = 1612
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cbx_series cbx_series
ddlb_series ddlb_series
mle_value mle_value
mle_category mle_category
st_3 st_3
st_2 st_2
st_1 st_1
cb_3 cb_3
mle_1 mle_1
cb_2 cb_2
cb_1 cb_1
end type
global w_input_sql w_input_sql

type variables

end variables

on w_input_sql.create
this.cbx_series=create cbx_series
this.ddlb_series=create ddlb_series
this.mle_value=create mle_value
this.mle_category=create mle_category
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.cb_3=create cb_3
this.mle_1=create mle_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cbx_series,&
this.ddlb_series,&
this.mle_value,&
this.mle_category,&
this.st_3,&
this.st_2,&
this.st_1,&
this.cb_3,&
this.mle_1,&
this.cb_2,&
this.cb_1}
end on

on w_input_sql.destroy
destroy(this.cbx_series)
destroy(this.ddlb_series)
destroy(this.mle_value)
destroy(this.mle_category)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_3)
destroy(this.mle_1)
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cbx_series from checkbox within w_input_sql
integer x = 123
integer y = 988
integer width = 256
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Series:"
end type

event clicked;IF cbx_series.checked THEN
	ddlb_series.enabled = TRUE
ELSE
	ddlb_series.enabled = FALSE
END IF
end event

type ddlb_series from dropdownlistbox within w_input_sql
integer x = 443
integer y = 984
integer width = 997
integer height = 376
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
boolean enabled = false
borderstyle borderstyle = stylelowered!
end type

type mle_value from multilineedit within w_input_sql
integer x = 443
integer y = 808
integer width = 997
integer height = 88
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "num"
borderstyle borderstyle = stylelowered!
end type

type mle_category from multilineedit within w_input_sql
integer x = 443
integer y = 636
integer width = 997
integer height = 88
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "name"
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_input_sql
integer x = 146
integer y = 820
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
string text = "Value:"
boolean focusrectangle = false
end type

type st_2 from statictext within w_input_sql
integer x = 114
integer y = 640
integer width = 242
integer height = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Category:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_input_sql
integer x = 110
integer y = 48
integer width = 727
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
long backcolor = 67108864
string text = "Input SQL Syntax manually:"
boolean focusrectangle = false
end type

type cb_3 from commandbutton within w_input_sql
integer x = 105
integer y = 1316
integer width = 366
integer height = 92
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
string text = "Preview Data"
end type

event clicked;String		ls_SQL, ls_Category, ls_Value, ls_Table

ls_Category = mle_category.text
ls_Value = mle_value.text

ls_SQL = Trim(mle_1.text)
OpenWithParm(w_predata, ls_SQL)
end event

type mle_1 from multilineedit within w_input_sql
integer x = 105
integer y = 132
integer width = 2094
integer height = 368
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
long textcolor = 33554432
string text = "SELECT (dept_name) AS name,Count(emp_id) AS num FROM employee, department WHERE employee.dept_id = department.dept_id GROUP BY dept_name"
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
borderstyle borderstyle = stylelowered!
end type

event modified;//String		ls_SQL, ls_DWSyntax, ls_Error, ls_Category
//Long		ll_col_count, ll_i
//DataStore lds_data
//
//ls_SQL = Trim(mle_1.text)
//
//IF Len(ls_SQL) > 0 THEN
//	lds_data = Create DataStore
//	ls_DWSyntax = SQLCA.SyntaxFromSQL(ls_SQL, 'style(type=grid)', ls_Error)
//	IF Len(ls_Error) >0 THEN
//		Messagebox("Caution", "SyntaxFromSQL caused these errors: " + ls_Error )
//		RETURN
//	END IF
//	
//	lds_data.Create(ls_DWSyntax, ls_Error)
//	IF Len(ls_Error) >0 THEN
//		Messagebox("Caution", "SyntaxFromSQL caused these errors: " + ls_Error)
//		RETURN
//	END IF
//	lds_data.SetTransObject(SQLCA)
//	lds_data.Retrieve()
//	
//	ll_col_count = Long(lds_data.Describe("DataWindow.Column.Count"))
//	
//	FOR ll_i = 1 TO ll_col_count
//		ls_Category = lds_data.Describe("#"+String(ll_i)+".Name")
//		messagebox("cate", ls_Category)
//	NEXT
//END IF
end event

type cb_2 from commandbutton within w_input_sql
integer x = 1861
integer y = 1316
integer width = 343
integer height = 92
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
string text = "Cancel"
end type

event clicked;Close( Parent )
end event

type cb_1 from commandbutton within w_input_sql
integer x = 1426
integer y = 1316
integer width = 343
integer height = 92
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Segoe UI"
string text = "OK"
boolean default = true
end type

event clicked;String		ls_SQL, ls_Category, ls_Value, ls_Option
JsonGenerator lnv_JsonGenerator 
Long ll_RootObject

ls_SQL = mle_1.text
ls_Category = mle_category.text
ls_Value = mle_value.text


lnv_JsonGenerator = Create JsonGenerator

ll_RootObject = lnv_JsonGenerator.CreateJsonObject ()
lnv_JsonGenerator.AddItemString(ll_RootObject, "SQL", ls_SQL)
lnv_JsonGenerator.AddItemString(ll_RootObject, "Category", ls_Category)
lnv_JsonGenerator.AddItemString(ll_RootObject, "Value", ls_Value)

ls_Option = lnv_JsonGenerator.GetJsonString()

IF IsValid(  lnv_JsonGenerator ) THEN Destroy ( lnv_JsonGenerator)


CloseWithReturn(parent, ls_Option)
end event

