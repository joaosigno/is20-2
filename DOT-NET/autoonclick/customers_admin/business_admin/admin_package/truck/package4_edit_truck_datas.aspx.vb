Imports System.IO
Imports System.Data
Imports System.Data.OleDb
Public Class package4_edit_truck_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents BrandValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents carStatusValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents check_status As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents model As System.Web.UI.WebControls.TextBox
    Protected WithEvents ModelRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents firstmm As System.Web.UI.WebControls.DropDownList
    Protected WithEvents firstyyyy As System.Web.UI.WebControls.DropDownList
    Protected WithEvents FristmmValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents FristyyyyValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents carid As System.Web.UI.WebControls.TextBox
    Protected WithEvents cartype As System.Web.UI.WebControls.DropDownList
    Protected WithEvents CartypeValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents enginetype As System.Web.UI.WebControls.DropDownList
    Protected WithEvents EnginetypeValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents cc As System.Web.UI.WebControls.TextBox
    Protected WithEvents CcRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ccValidate As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents color As System.Web.UI.WebControls.DropDownList
    Protected WithEvents metalic As System.Web.UI.WebControls.CheckBox
    Protected WithEvents power As System.Web.UI.WebControls.TextBox
    Protected WithEvents pow As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents PowerRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents gear As System.Web.UI.WebControls.DropDownList
    Protected WithEvents nummi As System.Web.UI.WebControls.TextBox
    Protected WithEvents mi As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents NummiRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents numdoor As System.Web.UI.WebControls.TextBox
    Protected WithEvents NumdoorRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents numgear As System.Web.UI.WebControls.TextBox
    Protected WithEvents NumgearRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents numseat As System.Web.UI.WebControls.TextBox
    Protected WithEvents NumseatRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents numpump As System.Web.UI.WebControls.TextBox
    Protected WithEvents NumpumpRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents prao As System.Web.UI.WebControls.TextBox
    Protected WithEvents praoValidate As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents loadTruck As System.Web.UI.WebControls.TextBox
    Protected WithEvents loadValidate As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents praoDrive As System.Web.UI.WebControls.TextBox
    Protected WithEvents praoDriveValidate As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents weightTruck As System.Web.UI.WebControls.TextBox
    Protected WithEvents weightValidate As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents fuelconsume As System.Web.UI.WebControls.TextBox
    Protected WithEvents FuelconsumeRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents fueltank As System.Web.UI.WebControls.TextBox
    Protected WithEvents FueltankRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents lastmm As System.Web.UI.WebControls.DropDownList
    Protected WithEvents lastyyyy As System.Web.UI.WebControls.DropDownList
    Protected WithEvents insur As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents price As System.Web.UI.WebControls.TextBox
    Protected WithEvents PriceRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents acc As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents AccRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents accessory1 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents accessory2 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents accessory3 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents description As System.Web.UI.WebControls.TextBox
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Image3 As System.Web.UI.WebControls.Image
    Protected WithEvents Image4 As System.Web.UI.WebControls.Image
    Protected WithEvents Image5 As System.Web.UI.WebControls.Image
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents Brands As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents img1 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents img2 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents img3 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents img4 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents img5 As System.Web.UI.HtmlControls.HtmlInputFile

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public acc1 As String
    Public acc2 As String
    Public acc3 As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim myInfo As A_Customer = CustomerDB.getA_customer(Session("cust_id"))
        Dim myTruck As Truck
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        If Session("cust_id") = 0 Then
            Response.Redirect("../../../../public/login/login.aspx")
        Else
            If Not IsPostBack Then
                Session("from") = Request.QueryString("from")
                Session("carid") = Request.QueryString("car")
                Session("notice_id") = Request.QueryString("notice_id")
                Session("detailid") = Request.QueryString("detailid")
                Session("curData") = Request.QueryString("curData")

                myTruck = TruckDB.getTruck(Session("carid"))

                setValue(myTruck, myInfo, Session("notice_id"), Session("detailid"))

                If status.SelectedValue = "1" Then
                    firstmm.Enabled = False
                    firstyyyy.Enabled = False
                Else
                    firstmm.Enabled = True
                    firstyyyy.Enabled = True
                End If

            End If
        End If
    End Sub

    Private Sub setValue(ByVal myTruck As Truck, ByRef myInfo As A_Customer, ByVal noticeid As Integer, ByVal detailid As Integer)
        Dim year As Array
        Dim lastCheck As Array
        year = Split(myTruck.Year, "/")
        lastCheck = Split(myTruck.LastCheck, "/")

        Session("brandIndex") = myTruck.Brand
        model.Text = myTruck.Model

        If myTruck.Status = 0 Then
            status.SelectedValue = "0"
        Else
            status.SelectedValue = myTruck.Status
        End If

        If myTruck.Year = "" Then
            firstmm.SelectedValue = "mm"
        Else
            firstmm.SelectedValue = year(0)
        End If
        If myTruck.Year = "" Then
            firstyyyy.SelectedValue = "yyyy"
        Else
            firstyyyy.SelectedValue = year(1)
        End If

        If myTruck.Type = 0 Then
            cartype.SelectedValue = "0"
        Else
            cartype.SelectedValue = myTruck.Type
        End If

        If myTruck.BodyId = "" Then
            carid.Text = ""
        Else
            carid.Text = myTruck.BodyId
        End If

        If myTruck.EngineType = 0 Then
            enginetype.SelectedValue = "0"
        Else
            enginetype.SelectedValue = myTruck.EngineType
        End If
        If myTruck.CC = 0 Then
            cc.Text = ""
        Else
            cc.Text = myTruck.CC
        End If


        If myTruck.Color = 0 Then
            color.SelectedValue = "0"
        Else
            color.SelectedValue = myTruck.Color
        End If

        If myTruck.Metalic = 0 Then
            metalic.Checked = False
        Else
            metalic.Checked = True
        End If

        If myTruck.Power = 0 Then
            power.Text = ""
        Else
            power.Text = myTruck.Power
        End If

        If myTruck.PowerType <> "" Then
            If myTruck.PowerType = "kw" Then
                pow.SelectedIndex = 1
            Else
                pow.SelectedIndex = 0
            End If
        End If

        If myTruck.Gears = 0 Then
            gear.SelectedValue = "0"
        Else
            gear.SelectedValue = myTruck.Gears
        End If
        If myTruck.Miles = 0 Then
            nummi.Text = ""
        Else
            nummi.Text = myTruck.Miles
        End If

        If myTruck.MilesType <> "" Then
            If myTruck.MilesType = "mi" Then
                mi.SelectedIndex = 1
            Else
                mi.SelectedIndex = 0
            End If
        End If

        If myTruck.NumDoor = 0 Then
            numdoor.Text = ""
        Else
            numdoor.Text = myTruck.NumDoor
        End If
        If myTruck.NumGear = 0 Then
            numgear.Text = ""
        Else
            numgear.Text = myTruck.NumGear
        End If
        If myTruck.NumSeat = 0 Then
            numseat.Text = ""
        Else
            numseat.Text = myTruck.NumSeat
        End If
        If myTruck.NumPump = 0 Then
            numpump.Text = ""
        Else
            numpump.Text = myTruck.NumPump
        End If
        If myTruck.NumPrao = 0 Then
            prao.Text = ""
        Else
            prao.Text = myTruck.NumPrao
        End If
        If myTruck.NumWeightLoad = 0 Then
            loadTruck.Text = ""
        Else
            loadTruck.Text = myTruck.NumWeightLoad
        End If
        If myTruck.NumWeight = 0 Then
            weightTruck.Text = ""
        Else
            weightTruck.Text = myTruck.NumWeight
        End If

        If myTruck.FuelConsume = 0 Then
            fuelconsume.Text = ""
        Else
            fuelconsume.Text = myTruck.FuelConsume
        End If

        If myTruck.FuelTank = 0 Then
            fueltank.Text = ""
        Else
            fueltank.Text = myTruck.FuelTank
        End If

        If myTruck.LastCheck = "" Then
            lastmm.SelectedValue = "mm"
        Else
            lastmm.SelectedValue = lastCheck(0)
        End If

        If myTruck.LastCheck = "" Then
            lastyyyy.SelectedValue = "yyyy"
        Else
            lastyyyy.SelectedValue = lastCheck(1)
        End If

        If myTruck.Insurrance <> 999 Then
            If myTruck.Insurrance = 1 Then
                insur.SelectedIndex = 0
            Else
                insur.SelectedIndex = 1
            End If
        End If
        If myTruck.Price = 0 Then
            price.Text = ""
        Else
            price.Text = myTruck.Price
        End If



        If myTruck.Accident = 1 Then
            acc.SelectedIndex = 0
        Else
            acc.SelectedIndex = 1
        End If

        Dim n As Integer
        Dim v_acc As Accessory

        Dim TempObjQueue As IEnumerator = myTruck.Accessory1.GetEnumerator()
        While (TempObjQueue.MoveNext)

            v_acc = TempObjQueue.Current
            Select Case v_acc.type
                Case 1
                    For n = 0 To accessory1.Items.Count - 1
                        If accessory1.Items(n).Value = v_acc.id Then
                            accessory1.Items(n).Selected = True
                        End If
                    Next
                Case 2
                    For n = 0 To accessory2.Items.Count - 1
                        If accessory2.Items(n).Value = v_acc.id Then
                            accessory2.Items(n).Selected = True
                        End If
                    Next
                Case 3
                    For n = 0 To accessory3.Items.Count - 1
                        If accessory3.Items(n).Value = v_acc.id Then
                            accessory3.Items(n).Selected = True
                        End If
                    Next
            End Select
        End While
        description.Text = myTruck.Information



        If (myTruck.Image1 = "") Then
            Image1.ImageUrl = "../../../../images/objects/no_image_80x60.gif"
        Else
            Image1.ImageUrl = "/userData/" & myInfo.username & "/" & noticeid & "/" & detailid & "/" & myTruck.Image1
        End If

        If (myTruck.Image2 = "") Then
            Image2.ImageUrl = "../../../../images/objects/no_image_80x60.gif"
        Else
            Image2.ImageUrl = "/userData/" & myInfo.username & "/" & noticeid & "/" & detailid & "/" & myTruck.Image2
        End If

        If (myTruck.Image3 = "") Then
            Image3.ImageUrl = "../../../../images/objects/no_image_80x60.gif"
        Else
            Image3.ImageUrl = "/userData/" & myInfo.username & "/" & noticeid & "/" & detailid & "/" & myTruck.Image3
        End If

        If (myTruck.Image4 = "") Then
            Image4.ImageUrl = "../../../../images/objects/no_image_80x60.gif"
        Else
            Image4.ImageUrl = "/userData/" & myInfo.username & "/" & noticeid & "/" & detailid & "/" & myTruck.Image4
        End If

        If (myTruck.Image5 = "") Then
            Image5.ImageUrl = "../../../../images/objects/no_image_80x60.gif"
        Else
            Image5.ImageUrl = "/userData/" & myInfo.username & "/" & noticeid & "/" & detailid & "/" & myTruck.Image5
        End If

    End Sub

    Private Sub saveValue(ByVal data_id As Integer)
        Dim editedCar As Truck
        Dim oldCar As Truck

        editedCar.id = data_id
        oldCar = TruckDB.getTruck(editedCar.id)

        editedCar.Brand = Request.Form("brands")
        editedCar.Model = model.Text
        editedCar.Status = status.SelectedValue
        editedCar.Year = checkFistYear(firstmm.SelectedValue, firstyyyy.SelectedValue)
        editedCar.Year_Ord = checkFistYear2(firstyyyy.SelectedValue)

        editedCar.Type = cartype.SelectedValue
        editedCar.BodyId = carid.Text
        editedCar.EngineType = enginetype.SelectedValue
        editedCar.CC = cc.Text
        editedCar.Color = color.SelectedValue
        editedCar.Metalic = metalic.Checked

        editedCar.Power = String_chk.checknullStrInt(power.Text)
        editedCar.PowerType = pow.SelectedValue
        editedCar.Gears = gear.SelectedValue
        editedCar.Miles = String_chk.checknullStrInt(nummi.Text)
        editedCar.MilesType = mi.SelectedValue
        editedCar.NumDoor = String_chk.checknullStrInt(numdoor.Text)
        editedCar.NumGear = String_chk.checknullStrInt(numgear.Text)
        editedCar.NumSeat = String_chk.checknullStrInt(numseat.Text)
        editedCar.NumPump = String_chk.checknullStrInt(numpump.Text)
        editedCar.NumPrao = String_chk.checknullStrInt(prao.Text)
        editedCar.NumWeightLoad = String_chk.checknullStrInt(loadTruck.Text)
        editedCar.NumPraoDrive = String_chk.checknullStrInt(praoDrive.Text)
        editedCar.NumWeight = String_chk.checknullStrInt(weightTruck.Text)
        editedCar.FuelConsume = String_chk.checknullStrInt(fuelconsume.Text)

        editedCar.FuelTank = String_chk.checknullStrInt(fueltank.Text)
        editedCar.LastCheck = checkLastYear(lastmm.SelectedValue, lastyyyy.SelectedValue)
        editedCar.Insurrance = String_chk.checknullStrInt(insur.SelectedValue)
        editedCar.Price = String_chk.checknullStrInt(price.Text)
        editedCar.Accident = acc.SelectedValue

        'getAcc()
        'editedCar.Accessory = acc3 & acc2 & acc1
        editedCar.Accessory1 = getAcc()
        editedCar.Information = description.Text

        If img1.PostedFile.ContentLength <> 0 And img1.PostedFile.ContentLength < 150010 Then
            Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

            Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
            Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")

            Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & Session("notice_id") & "\" & Session("detailid")
            Dim tempFile As String

            tempFile = Utilities.UploadFile(img1, temppath)
            Dim FileName As String = Path.GetFileName(img1.PostedFile.FileName)

            editedCar.Image1 = FileName
        Else
            editedCar.Image1 = oldCar.Image1
        End If

        If img2.PostedFile.ContentLength <> 0 And img2.PostedFile.ContentLength < 150010 Then
            Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

            Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
            Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
            'objdir.CreateSubdirectory(usrName & "\" & Session("notice_id") & "\" & NoticeDetailDB.getNoticeDetailID(Session("notice_id")))

            Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & Session("notice_id") & "\" & Session("detailid")
            Dim tempFile As String

            tempFile = Utilities.UploadFile(img2, temppath)
            Dim FileName As String = Path.GetFileName(img2.PostedFile.FileName)

            editedCar.Image2 = FileName
        Else
            editedCar.Image2 = oldCar.Image2
        End If

        If img3.PostedFile.ContentLength <> 0 And img3.PostedFile.ContentLength < 150010 Then
            Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

            Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
            Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
            'objdir.CreateSubdirectory(usrName & "\" & Session("notice_id") & "\" & NoticeDetailDB.getNoticeDetailID(Session("notice_id")))

            Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & Session("notice_id") & "\" & Session("detailid")
            Dim tempFile As String

            tempFile = Utilities.UploadFile(img3, temppath)
            Dim FileName As String = Path.GetFileName(img3.PostedFile.FileName)

            editedCar.Image3 = FileName
        Else
            editedCar.Image3 = oldCar.Image3
        End If

        If img4.PostedFile.ContentLength <> 0 And img4.PostedFile.ContentLength < 150010 Then
            Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

            Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
            Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
            'objdir.CreateSubdirectory(usrName & "\" & Session("notice_id") & "\" & NoticeDetailDB.getNoticeDetailID(Session("notice_id")))

            Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & Session("notice_id") & "\" & Session("detailid")
            Dim tempFile As String

            tempFile = Utilities.UploadFile(img4, temppath)
            Dim FileName As String = Path.GetFileName(img4.PostedFile.FileName)

            editedCar.Image4 = FileName
        Else
            editedCar.Image4 = oldCar.Image4
        End If

        If img5.PostedFile.ContentLength <> 0 And img5.PostedFile.ContentLength < 150010 Then
            Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

            Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
            Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
            'objdir.CreateSubdirectory(usrName & "\" & Session("notice_id") & "\" & NoticeDetailDB.getNoticeDetailID(Session("notice_id")))

            Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & Session("notice_id") & "\" & Session("detailid")
            Dim tempFile As String

            tempFile = Utilities.UploadFile(img5, temppath)
            Dim FileName As String = Path.GetFileName(img5.PostedFile.FileName)

            editedCar.Image5 = FileName
        Else
            editedCar.Image5 = oldCar.Image5
        End If

        'Response.Write(CarDB.editCar(editedCar))
        TruckDB.editTruck(editedCar)

    End Sub
    Private Sub getAcc_bak()
        Dim i As Integer
        Dim check As Boolean
        check = True
        For i = 0 To accessory1.Items.Count - 1
            If accessory1.Items(i).Selected Then
                acc1 = "1" & acc1
            Else
                acc1 = "0" & acc1
            End If
        Next
        For i = 0 To accessory2.Items.Count - 1
            If accessory2.Items(i).Selected Then
                acc2 = "1" & acc2
            Else
                acc2 = "0" & acc2
            End If
        Next
        For i = 0 To accessory3.Items.Count - 1
            If accessory3.Items(i).Selected Then
                acc3 = "1" & acc3
            Else
                acc3 = "0" & acc3
            End If
        Next
    End Sub
    Private Function getAcc() As Queue
        Dim i As Integer, n As Integer
        Dim tmp As Accessory
        Dim v_access As Queue
        v_access = New Queue


        For i = 0 To accessory1.Items.Count - 1
            If accessory1.Items(i).Selected Then
                tmp = New Accessory
                tmp.id = accessory1.Items(i).Value
                tmp.name = accessory1.Items(i).Text
                tmp.type = 1
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next

        For i = 0 To accessory2.Items.Count - 1
            If accessory2.Items(i).Selected Then
                tmp = New Accessory
                tmp.id = accessory2.Items(i).Value
                tmp.name = accessory2.Items(i).Text
                tmp.type = 2
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next

        For i = 0 To accessory3.Items.Count - 1
            If accessory3.Items(i).Selected Then
                tmp = New Accessory
                tmp.id = accessory3.Items(i).Value
                tmp.name = accessory3.Items(i).Text
                tmp.type = 3
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next


        Return v_access

    End Function
    Private Function checkFistYear(ByVal v_fmm As String, ByVal v_fyyyy As String) As String
        Dim v_first As String = v_fmm & "/" & v_fyyyy
        If v_first = "/" Or v_first = "mm/yyyy" Then
            v_first = ""
        End If
        Return v_first
    End Function
    Private Function checkFistYear2(ByVal v_fyyyy As String) As Integer
        Dim v_first As String = v_fyyyy
        If v_first = "" Or v_first = "yyyy" Then
            v_first = 0
        End If
        Return v_first
    End Function
    Private Function checkLastYear(ByVal v_lmm As String, ByVal v_lyyyy As String) As String
        Dim v_last As String = v_lmm & "/" & v_lyyyy
        If v_last = "mm/yyyy" Then
            v_last = ""
        End If
        Return v_last
    End Function

    Private Sub status_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles status.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT STATUS, STATUS_NAME FROM STATUS WHERE STATUS IN (1,2) ORDER BY STATUS"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        DRow.Item("STATUS") = 0
        DRow.Item("STATUS_NAME") = "�ô�к�"
        ds.Tables("status").Rows.InsertAt(DRow, 0)
        status.DataSource = ds.Tables("status")
        status.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub firstmm_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles firstmm.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        DTable.Columns.Add(New DataColumn("MONTH", GetType(String)))
        DTable.Columns.Add(New DataColumn("MONTH_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("MONTH") = "mm"
        DRow.Item("MONTH_NAME") = "mm"
        DTable.Rows.Add(DRow)
        Dim i As Int16
        For i = 1 To 12
            DRow = DTable.NewRow()
            DRow.Item("MONTH") = Right("0" & i, 2)
            DRow.Item("MONTH_NAME") = Right("0" & i, 2)
            DTable.Rows.Add(DRow)
        Next
        firstmm.DataSource = DTable
        firstmm.DataBind()
    End Sub
    Private Sub firstyyyy_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles firstyyyy.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim ConstYear As String = ConfigurationSettings.AppSettings("ConstYear")

        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("YEAR") = "yyyy"
        DRow.Item("YEAR_NAME") = "yyyy"
        DTable.Rows.InsertAt(DRow, 0)
        Dim i As Int16
        Dim thisYear As Integer
        Year(New Date)
        thisYear = Year(Now()) - ConstYear

        For i = 0 To thisYear - 1900
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = Right(Str(thisYear - i), 4)
            DRow.Item("YEAR_NAME") = Right(Str(thisYear - i), 4)
            DTable.Rows.Add(DRow)
        Next
        firstyyyy.DataSource = DTable
        firstyyyy.DataBind()
    End Sub
    Private Sub cartype_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles cartype.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT CARTYPE, CARTYPE_NAME FROM CARTYPE WHERE CATEGORY=3"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "cartype")

        Dim DRow As DataRow = ds.Tables("cartype").NewRow()
        DRow.Item("CARTYPE") = 0
        DRow.Item("CARTYPE_NAME") = "�ô�к�"
        ds.Tables("cartype").Rows.InsertAt(DRow, 0)
        cartype.DataSource = ds.Tables("cartype")
        cartype.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub enginetype_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles enginetype.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ENGINETYPE, ENGINETYPE_NAME FROM ENGINETYPE ORDER BY ENGINETYPE"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "enginetype")

        Dim DRow As DataRow = ds.Tables("enginetype").NewRow()
        DRow.Item("ENGINETYPE") = 0
        DRow.Item("ENGINETYPE_NAME") = "�ô�к�"
        ds.Tables("enginetype").Rows.InsertAt(DRow, 0)
        enginetype.DataSource = ds.Tables("enginetype")
        enginetype.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub color_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles color.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT COLOR, COLOR_NAME FROM COLOR ORDER BY COLOR"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "color")

        Dim DRow As DataRow = ds.Tables("color").NewRow()
        DRow.Item("COLOR") = 0
        DRow.Item("COLOR_NAME") = "�ô�к�"
        ds.Tables("color").Rows.InsertAt(DRow, 0)
        color.DataSource = ds.Tables("color")
        color.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub gear_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles gear.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT GEAR, GEAR_NAME FROM GEAR ORDER BY GEAR"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "gear")

        Dim DRow As DataRow = ds.Tables("gear").NewRow()
        DRow.Item("GEAR") = 0
        DRow.Item("GEAR_NAME") = "����к�"
        ds.Tables("gear").Rows.InsertAt(DRow, 0)
        gear.DataSource = ds.Tables("gear")
        gear.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub lastmm_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles lastmm.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        DTable.Columns.Add(New DataColumn("MONTH", GetType(String)))
        DTable.Columns.Add(New DataColumn("MONTH_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("MONTH") = "mm"
        DRow.Item("MONTH_NAME") = "mm"
        DTable.Rows.Add(DRow)
        Dim i As Int16
        For i = 1 To 12
            DRow = DTable.NewRow()
            DRow.Item("MONTH") = Right("0" & i, 2)
            DRow.Item("MONTH_NAME") = Right("0" & i, 2)
            DTable.Rows.Add(DRow)
        Next
        lastmm.DataSource = DTable
        lastmm.DataBind()
    End Sub
    Private Sub lastyyyy_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lastyyyy.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim ConstYear As String = ConfigurationSettings.AppSettings("ConstYear")

        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("YEAR") = "yyyy"
        DRow.Item("YEAR_NAME") = "yyyy"
        DTable.Rows.InsertAt(DRow, 0)
        Dim i As Int16
        Dim thisYear As Integer
        Year(New Date)
        thisYear = Year(Now()) - ConstYear

        For i = 0 To thisYear - 1900
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = Right(Str(thisYear - i), 4)
            DRow.Item("YEAR_NAME") = Right(Str(thisYear - i), 4)
            DTable.Rows.Add(DRow)
        Next
        lastyyyy.DataSource = DTable
        lastyyyy.DataBind()
    End Sub
    Private Sub accessory1_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles accessory1.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM TRUCK_ACCESSORY WHERE ACCESSORY <= 4 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory1")

        accessory1.DataSource = ds.Tables("accessory1")
        accessory1.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub accessory2_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles accessory2.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM TRUCK_ACCESSORY WHERE ACCESSORY >= 5 and ACCESSORY <= 8 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory2")

        accessory2.DataSource = ds.Tables("accessory2")
        accessory2.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub accessory3_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles accessory3.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM TRUCK_ACCESSORY WHERE ACCESSORY >= 9 and ACCESSORY <=12 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory3")

        accessory3.DataSource = ds.Tables("accessory3")
        accessory3.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub

    Private Sub clearSession()
        Session.Add("cat", "")

        Session.Add("sBrands", "")
        'Session.Add("brandIndex", "")
        Session.Remove("brandIndex")
        Session.Add("sModel", "")
        'Session.Add("modelIndex", "")
        Session.Add("status", "")
        Session.Add("firstmm", "")
        Session.Add("firstyyyy", "")
        Session.Add("submodel", "")
        Session.Add("cartype", "")
        'Session.Add("carid", "")
        Session.Add("enginetype", "")
        Session.Add("cc", "")
        Session.Add("color", "")
        Session.Add("metalic", "")
        Session.Add("power", "")
        Session.Add("pow", "")
        Session.Add("gear", "")
        Session.Add("nummi", "")
        Session.Add("mi", "")
        Session.Add("numdoor", "")
        Session.Add("numgear", "")
        Session.Add("numseat", "")
        Session.Add("numpump", "")
        Session.Add("numprao", "")
        Session.Add("numpraodrive", "")
        Session.Add("numweigth", "")
        Session.Add("numweigthload", "")
        Session.Add("fuelconsume", "")
        Session.Add("fueltank", "")
        Session.Add("lastmm", "")
        Session.Add("lastyyyy", "")
        Session.Add("insur", "")
        Session.Add("price", "")
        Session.Add("acc", "")

        Session.Add("v_access", "")

        Session.Add("description", "")
        Session.Add("img1", "")
        Session.Add("img2", "")
        Session.Add("img3", "")
        Session.Add("img4", "")
        Session.Add("img5", "")


    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        clearSession()
        If Session("from") <> "view" Then
            Response.Redirect("package3_list_truck_term_new.aspx?noticeid=" & Session("notice_id"))
        Else
            Response.Redirect("package4_detail_truck.aspx?carid=" & Session("carid") & "&detailid=" & Session("detailid") & "&noticeid=" & Session("notice_id"))
        End If
        Session("notice_id") = ""
        Session("carid") = ""
        Session("detailid") = ""
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        saveValue(Session("carid"))
        clearSession()
        If Session("from") <> "view" Then
            Response.Redirect("package3_list_truck_term_new.aspx?noticeid=" & Session("notice_id"))
        Else
            Response.Redirect("package4_detail_truck.aspx?carid=" & Session("carid") & "&detailid=" & Session("detailid") & "&noticeid=" & Session("notice_id") & "&curData=" & Session("curData"))
        End If
        Session("notice_id") = ""
        Session("carid") = ""
        Session("detailid") = ""
        Session("curData") = ""
    End Sub
End Class
