Public Class dealer_business_web_inventory_partdetail
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents www As System.Web.UI.WebControls.HyperLink
    Protected WithEvents compName As System.Web.UI.WebControls.Label
    Protected WithEvents introMainBuz As System.Web.UI.WebControls.Label
    Protected WithEvents moreBuz As System.Web.UI.WebControls.Label
    Protected WithEvents contact As System.Web.UI.WebControls.Label
    Protected WithEvents carBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents upPage As System.Web.UI.WebControls.Label
    Protected WithEvents category As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents status As System.Web.UI.WebControls.Label
    Protected WithEvents yearcar As System.Web.UI.WebControls.Label
    Protected WithEvents miles As System.Web.UI.WebControls.Label
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents accessory As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents Textbox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents phone1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents downPage As System.Web.UI.WebControls.Label
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents operateTime As System.Web.UI.WebControls.Label
    Protected WithEvents emaill As System.Web.UI.WebControls.Label
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents image11 As System.Web.UI.WebControls.Label
    Protected WithEvents question As System.Web.UI.WebControls.TextBox
    Protected WithEvents colorcode As System.Web.UI.WebControls.Label
    Protected WithEvents stpage As System.Web.UI.WebControls.Label
    Protected WithEvents printThis As System.Web.UI.WebControls.HyperLink
    Protected WithEvents savePak As System.Web.UI.WebControls.Label
    Protected WithEvents de_map As System.Web.UI.WebControls.HyperLink

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        showHead(Session("dealer_id"))

        Dim carid As Integer
        Dim myCar As Part
        Dim myInfo As A_Customer

        If Not IsPostBack Then
            carid = Request.QueryString("carid")

            myCar = PartsDB.getPart(carid)
            myInfo = CustomerDB.getA_customer(Session("dealer_id"))


            showCar(myCar)
            showPictures(myCar, myInfo)
            showMyInfo(myInfo)
            setTools(carid)

            Session("custID") = myInfo.id
            Session("mailto") = myInfo.email
            Session("carID") = myCar.id
        End If

        setLink(Session("dealer_id"))
        upPage.Text = showNextPage(Request.QueryString("curData"), Session("allCar_Parking"))
        downPage.Text = showNextPage(Request.QueryString("curData"), Session("allCar_Parking"))
        AjaxPro.Utility.RegisterTypeForAjax(GetType(dealer_business_web_inventory_partdetail))
    End Sub
    Private Sub setTools(ByVal carid As Integer)
        printThis.NavigateUrl = "../../../print_form/print_part_detail.aspx?carid=" & carid
        printThis.Target = "_blank"
        printThis.Text = "�����˹�ҹ��"

        savePak.Text = "<font id='savePark' class='Font_black_u' onmouseover = ""document.all.savePark.className='Font_black_u_over'"" onmouseout = ""document.all.savePark.className='Font_black_u'"" "
        savePak.Text = savePak.Text & "Style = 'CURSOR: hand'	onClick='saveAdv(" & carid & ");'>�ѹ�֡��С��</font>"
    End Sub
    Private Sub setLink(ByVal cust_id As Integer)
        stpage.Text = "<a href='dealer_business_web_start.aspx?cust_id=" & cust_id & "' class='A_BU_bold_white'>"
    End Sub
    Private Sub showHead(ByVal dealerid As Integer)
        Dim mySubQ As New Queue
        mySubQ = InfoQuestionDB.getInfoQuestions(dealerid)
        Dim myMainB As infoQuestion = InfoQuestionDB.getMainQuestion(dealerid)
        Dim myCust As A_Customer = CustomerDB.getA_customer(dealerid)

        If myCust.email <> "" Then
            emaill.Text = myCust.email & ", "
        End If
        If myCust.homepage <> "" Then
            www.Text = myCust.homepage
            www.NavigateUrl = myCust.homepage
            www.Target = "_blank"
        End If
        compName.Text = myCust.name
        introMainBuz.Text = showIntroMain(myMainB)
        moreBuz.Text = showIntroSub(mySubQ)
        contact.Text = myCust.address
        contact.Text = contact.Text & ", " & DistrictDB.getDistrictName(myCust.district)
        contact.Text = contact.Text & ", " & ProvinceDB.getProvinceName(myCust.province)
        contact.Text = contact.Text & " ���Ѿ��1:" & myCust.phone1
        If myCust.phone2 <> "" Then
            contact.Text = contact.Text & ", ���Ѿ��2:" & myCust.phone2
        End If
        If myCust.fax <> "" Then
            contact.Text = contact.Text & ", Fax:" & myCust.fax
        End If
        If myCust.dateStart = 0 And myCust.dateStop = 0 Then
            contact.Text = contact.Text & " ���ҷӡ��: ����к�"
        Else
            contact.Text = contact.Text & " ���ҷӡ��: " & CustomerDB.getDateOpen(myCust.dateStart) & " - " & CustomerDB.getDateOpen(myCust.dateStop)
        End If
        If myCust.timeStart <> 0 And myCust.timeStop <> 0 Then
            contact.Text = contact.Text & " : " & CustomerDB.getTimeOpen(myCust.timeStart) & " - " & CustomerDB.getTimeOpen(myCust.timeStop) & " �."
        End If

        image1.Text = showLogo(myCust)

        de_map.NavigateUrl = "dealer_business_web_map.aspx?dealer_id=" & dealerid
    End Sub
    Private Function showLogo(ByVal myCust As A_Customer) As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim img1 As String

        If myCust.logo_txt <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myCust.username & "/logo/" & myCust.logo_txt))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 160)
            IUrl = "/userData/" & myCust.username & "/logo/" & myCust.logo_txt
        Else
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_160x120.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 160)
            IUrl = "../../../images/objects/no_image_160x120.gif"
        End If
        img1 = "<img src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'>"
        Return img1
    End Function
    Private Function showIntroMain(ByVal mainB As infoQuestion) As String
        Dim result As String
        Dim flag As Boolean = False
        Dim buzType As BusinessType
        Dim x As Integer = InfoQuestionDB.questionTypeRev(mainB.type)

        buzType = BusinessTypeDB.getBuZName(x)
        result = buzType.typeName
        If mainB.q1 = 1 Then
            result = result & " ö¹��"
            flag = True
        End If
        If mainB.q2 = 1 Then
            If flag Then
                result = result & ","
            End If
            result = result & " ö�ѡ��ҹ¹��"
            flag = True
        End If
        If mainB.q3 = 1 Then
            If flag Then
                result = result & ","
            End If
            result = result & " ö��÷ء"
        End If

        flag = False

        Select Case x
            Case 1
                Dim myBuz As infoSaleCar = InfoSaleCarDB.getInfoSaleCar(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (�繵��᷹������Ѻ����觵�����ҧ�繷ҧ�����: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 2
                Dim myBuz As infoServiceCar = InfoServiceCarDB.getInfoServiceCar(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (�繵��᷹������Ѻ����觵�����ҧ�繷ҧ�����: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 3
                Dim myBuz As infoSalePart = InfoSalePartDB.getInfoSalePart(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (�繵��᷹������Ѻ����觵�����ҧ�繷ҧ�����: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
        End Select


        Return result
    End Function
    Private Function showIntroSub(ByVal subQ As Queue) As String
        Dim result As String = ""
        Dim presult As String
        Dim myBuz As infoQuestion

        For Each myBuz In subQ
            presult = showSub(myBuz)
            If presult <> "-" Then
                result = result & presult & "; "
            End If
        Next

        If Len(result) > 0 Then
            result = Left(result, Len(result) - 2)
        Else
            result = "-"
        End If

        Return result
    End Function
    Private Function showSub(ByVal subB As infoQuestion) As String
        Dim result As String
        Dim flag As Boolean = False
        Dim buzType As BusinessType
        Dim x As Integer = InfoQuestionDB.questionTypeRev(subB.type)

        If subB.q1 <> 0 Or subB.q2 <> 0 Or subB.q3 <> 0 Then
            buzType = BusinessTypeDB.getBuZName(x)
            result = buzType.typeName
            If subB.q1 = 1 Then
                result = result & " ö¹��"
                flag = True
            End If
            If subB.q2 = 1 Then
                If flag Then
                    result = result & ","
                End If
                result = result & " ö�ѡ��ҹ¹��"
                flag = True
            End If
            If subB.q3 = 1 Then
                If flag Then
                    result = result & ","
                End If
                result = result & " ö��÷ء"
            End If


        Else
            result = "-"
        End If

        Return result
    End Function

    Private Function showNextPage(ByVal curData As Integer, ByRef allData As Queue) As String
        Dim x As String
        Dim carid As String, i As Integer

        x = "<table class=""Page_Number"" cellSpacing=""0"" cellPadding=""0"" align=""right"" border=""0"" >"
        x = x & "<tr>"
        If curData = 1 Then
            x = x & "<td>&lt;&lt;</td>"
        Else
            Dim TempObjQueue As IEnumerator = allData.GetEnumerator()
            For i = 1 To curData - 1
                TempObjQueue.MoveNext()
            Next
            carid = TempObjQueue.Current
            x = x & "<td><a href='dealer_business_web_inventory_detail.aspx?curData=" & curData - 1 & "&carid=" & carid & "' class='Font_black'><<</td>"
        End If
        x = x & "<td><IMG height=""1"" src=""../../../images/objects/no.gif"" width=""7""></td>"
        x = x & "<td><strong>Ad " & curData & " of " & allData.Count & "</strong></td>"
        x = x & "<td><IMG height=""1"" src=""../../../images/objects/no.gif"" width=""7""></td>"
        If curData = allData.Count Then
            x = x & "<td>&gt;&gt;</td>"
        Else
            Dim TempObjQueue As IEnumerator = allData.GetEnumerator()
            For i = 1 To curData + 1
                TempObjQueue.MoveNext()
            Next
            carid = TempObjQueue.Current
            x = x & "<td><a href='dealer_business_web_inventory_detail.aspx?curData=" & curData + 1 & "&carid=" & carid & "' class='Font_black'>>></td>"
        End If
        x = x & "</tr>"
        x = x & "</table>"

        Return x
    End Function

    Private Sub carBrandLabel(ByVal b As String, ByVal m As String, ByVal sm As String, ByVal price As Double)
        carBrand.Text = b & "/" & m
        If sm <> "" Then
            carBrand.Text = carBrand.Text & "/" & sm
        End If
        carBrand.ForeColor = Color.White
        carBrand.CssClass = "H1_white"

        If price = 0 Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(price)
        End If
        head_price.ForeColor = Color.White
        head_price.CssClass = "H1_white"

    End Sub
    Private Sub showCar(ByRef myCar As Part)

        category.Text = PartsTypeDB.getPartTypeName(myCar.Type)

        carBrandLabel(CategoryDB.getCategoryName(myCar.Category), myCar.Brand, myCar.Model, myCar.Price)

        If myCar.Price = 0 Then
            Price.Text = "-  �ҷ"
        Else
            Price.Text = FormatNumber(myCar.Price) & "  �ҷ"
        End If

        status.Text = CarStatusDB.getStatusName(myCar.Status)

        If myCar.Year = "" Then
            yearcar.Text = "-"
        Else
            yearcar.Text = myCar.Year
        End If

        If myCar.Miles = 0 Then
            miles.Text = "-  km/mi"
        Else
            miles.Text = myCar.Miles & "  " & myCar.MilesType
        End If

        If myCar.Color = "" Then
            colors.Text = "-"
        Else
            colors.Text = myCar.Color
        End If

        If myCar.Colorcode = "" Then
            colorcode.Text = "-"
        Else
            colorcode.Text = myCar.Colorcode
        End If

        If myCar.Accident = 999 Then
            accident.Text = "-"
        Else
            If myCar.Accident = -1 Then
                accident.Text = "���ش"
            Else
                accident.Text = "�Թ��������ش"
            End If
        End If

        If myCar.Insurrance = 999 Then
            insurrunce.Text = "-"
        Else
            If myCar.Insurrance = -1 Then
                insurrunce.Text = "�Թ����ջ�Сѹ"
            Else
                insurrunce.Text = "�Թ�������ջ�Сѹ"
            End If
        End If

        If myCar.Code = "" Then
            carid.Text = "-"
        Else
            carid.Text = myCar.Code
        End If

        description.Text = myCar.Information

    End Sub
    Private Sub showPictures(ByRef car As Part, ByRef myinfo As A_Customer)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String


        'Response.Write(NoticeDB.getImgPath(myinfo.id, car.id, 1))
        'Response.Write(myinfo.id)

        If car.Image <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 4) & "/" & car.Image))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 4) & "/" & car.Image
        Else
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "../../../images/objects/no_image_250x188.gif"
        End If
        image11.Text = "<img src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"


    End Sub
    Private Sub showMyInfo(ByRef myinfo As A_Customer)
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        If myinfo.type = 0 Then
            custName.Text = "-"
        Else
            custName.Text = myinfo.name
        End If

        Addr.Text = myinfo.address & ", ����� " & DistrictDB.getDistrictName(myinfo.district) & " �ѧ��Ѵ " & ProvinceDB.getProvinceName(myinfo.province)
        Tel.Text = myinfo.phone1
        If myinfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myinfo.phone2
        End If
        fax.Text = myinfo.fax

        If myinfo.timeStart <> 0 Then
            operateTime.Text = myinfo.timeStart & " - " & myinfo.timeStop
        Else
            operateTime.Text = "-"
        End If

      
    End Sub
    <AjaxPro.AjaxMethod()> _
    Public Function sendQuestion(ByVal name As String, ByVal email As String, ByVal phone1 As String, ByVal question As String) As String
        Dim EQuestion As mailQuestion

        EQuestion.name = name
        EQuestion.mail = email
        EQuestion.tel = phone1
        EQuestion.question = question

        EmailDB.sendMailQuestion(Session("mailto"), Session("custID"), Session("carID"), 1, EQuestion)

        Return "Email ��١�Ѵ�����º����"
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showMainPic(ByVal picNo As Integer, ByVal picUrl As String) As String
        Dim tmp As String, tmp2 As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim x As Integer


        If picNo = 1 Then
            picUrl = PartsDB.getMainPic(Session("carID"))
        End If

        If picUrl = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_60x45.gif" Then
            picUrl = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_250x188.gif"
        End If

        If picUrl.IndexOf("userData") <> -1 Then
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("userData"))
            tmp2 = "/" & tmp2

        Else
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("images"))
            tmp2 = "../" & tmp2

        End If
        a = New Bitmap(Server.MapPath(tmp2))
        autoonclick.resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
        tmp = "<img style=""CURSOR: hand"" src='" & picUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"




        Return tmp
    End Function
End Class