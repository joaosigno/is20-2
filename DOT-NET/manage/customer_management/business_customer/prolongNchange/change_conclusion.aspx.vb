Imports System.Globalization
Imports System.Threading
Public Class change_conclusion
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents p_type As System.Web.UI.WebControls.Label
    Protected WithEvents p_name As System.Web.UI.WebControls.Label
    Protected WithEvents p_area As System.Web.UI.WebControls.Label
    Protected WithEvents p_period As System.Web.UI.WebControls.Label
    Protected WithEvents p_start As System.Web.UI.WebControls.Label
    Protected WithEvents p_price As System.Web.UI.WebControls.Label
    Protected WithEvents p_code As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents refer As System.Web.UI.WebControls.Label
    Protected WithEvents whatNext As System.Web.UI.WebControls.Label

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
        Dim invoiceid As Integer
        Dim changeid As Integer
        Dim myChange As ChangeTx
        Dim packageid As Integer
        Dim startDate As DateTime
        Dim oldStartDate As DateTime
        Dim startDateTxt As String
        Dim price As Double
        Dim price2 As Double
        Dim price3 As Double
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'Session("noticeid") = 24
        'Session("newPack") = 11
        'Session("startDate") = "3"

        Session("isFirstTime") = "NO"



        If Not IsPostBack Then

            If Session("noticestatus") <> "Offline" Then ' --------------  Notice online ����

                startDate = getStartDate(Session("noticeid"), Session("startDate"))

                If Session("startDate") = "old" Then
                    price = PackageDB.getPackagePrice(Session("newPack"))
                    price2 = price
                Else
                    price = PackageDB.getPackagePrice(Session("newPack"))

                    price3 = PackageDB.getPackageDiscount(Session("noticeid"), startDate)
                    price2 = Math.Floor(price + price3)

                    If price2 <= 0 Then
                        price2 = 0
                    End If
                End If

                ' ----------   ��� Invoice , changeTX , update C ��� Notice  ���� ����Ѻ change package ------------------------
                If PackageDB.getPackagePrice(Session("newPack")) = 0 Then
                    invoiceid = addInvoice(Session("noticeid"), Session("newPack"), startDate, price2)
                    TmpPaymentDb.insertTmpPayment(1, invoiceid, CInt(Session("cust_id")), DB.getToday(), DB.getToday().ToString("HH:mm"), 99, 0, "Promotion Free Trial")
                    InvoiceDB.updatePaidInvoice2(invoiceid)
                Else
                    invoiceid = addInvoice(Session("noticeid"), Session("newPack"), startDate, price2)
                End If
                'invoiceid = addInvoice(Session("noticeid"), Session("newPack"), startDate, price2)

                myChange.NoticeID = Session("noticeid")
                myChange.InvoiceID = invoiceid
                myChange.PackageID = Session("newPack")
                myChange.Date_Start = startDate
                myChange.Date_Stop = getStopDate(startDate, Session("newPack"))
                myChange.Expire = 0
                changeid = ChangeDB.insertChangeTx(myChange)
                setProlongNotice(Session("noticeid"), "C", "A_PC_red_underline")

                ' ----------   �ʴ�˹�Ҩ� ��ػ�š������¹ package  ------------------------
                showpackage(Session("newPack"), invoiceid, startDate, price2, price, price3, Session("noticeid"))

            Else ' --------------  notice �ѧ�� Offline ����

                packageid = Session("packageid")
                startDateTxt = "�ѹ��ѧ�׹�ѹ��ê��Ф�Һ�ԡ������"
                Dim myNotice As noticeS
                myNotice = NoticeDB.getNoticesInfoD(Session("noticeid"))

                ' --------------  ¡��ԡ invoice ��ҡ�͹ -------------------------
                invoiceid = InvoiceDB.getChangeInvoice(Session("noticeid"), packageid)
                updateCancelInvoice2(invoiceid)
                '-- �¡ �ó� Offline ���������� �Ѻ Offline ��ѧ��������͡�ҡ�ѹ --
                If myNotice.status = 1 Then

                    If PackageDB.getPackagePrice(Session("newPack")) = 0 Then
                        invoiceid = addInvoiceNew(Session("noticeid"), Session("newPack"), startDateTxt, 1)
                        TmpPaymentDb.insertTmpPayment(1, invoiceid, CInt(Session("cust_id")), DB.getToday(), DB.getToday().ToString("HH:mm"), 99, 0, "Promotion Free Trial")
                        InvoiceDB.updatePaidInvoice2(invoiceid)
                    Else
                        invoiceid = addInvoiceNew(Session("noticeid"), Session("newPack"), startDateTxt, 1)
                    End If



                Else '----- �óշ�� Offline ����������� ------------------------------
                    If PackageDB.getPackagePrice(Session("newPack")) = 0 Then
                        invoiceid = addInvoiceChange(Session("noticeid"), Session("newPack"), startDateTxt, DB.getToday(), 3)
                        TmpPaymentDb.insertTmpPayment(1, invoiceid, CInt(Session("cust_id")), DB.getToday(), DB.getToday().ToString("HH:mm"), 99, 0, "Promotion Free Trial")
                        InvoiceDB.updatePaidInvoice2(invoiceid)
                    Else
                        invoiceid = addInvoiceChange(Session("noticeid"), Session("newPack"), startDateTxt, DB.getToday(), 3)
                    End If
                    'invoiceid = addInvoiceChange(Session("noticeid"), Session("newPack"), startDateTxt, DB.getToday(), 3)
                    '--- ��� change Tx ------------------------------
                    myChange.NoticeID = Session("noticeid")
                    myChange.InvoiceID = invoiceid
                    myChange.PackageID = Session("newPack")
                    myChange.Date_Start = DB.getToday()
                    myChange.Date_Stop = getStopDate(myChange.Date_Start, Session("newPack"))
                    myChange.Expire = 0
                    changeid = ChangeDB.insertChangeTx(myChange)
                    setProlongNotice(Session("noticeid"), "C", "A_PC_red_underline")
                End If

                NoticeDB.setNewPackage(Session("noticeid"), Session("newPack"))
                'setProlongNotice(Session("noticeid"), "C", "A_PC_red_underline")
                ' ----------   �ʴ�˹�Ҩ� ��ػ�š������¹ package  ------------------------
                showpackageNew(Session("newPack"), invoiceid, startDateTxt, Session("noticeid"))
            End If
        End If
    End Sub

    Private Function showWhatNext() As String
        Dim txt As String

        txt = "<tr>"
        txt = txt & "<td background='../../../images/table/g_693.gif'><table border='0' align='center' cellpadding='0' cellspacing='0' class='Font_black_LH_17px'>"
        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>��С���͹�Ź�ͧ�س�������������ͤس������Թ��Һ�ԡ��ŧ��С�� �س�е�ͧ�����Թ��Һ�ԡ������ 7<br>�ѹ�Ѻ�ҡ�ѹ��� �ҡ����ѹ����˹���С�Ȣͧ�س�ж١ź������ѵ��ѵ�<br>"
        txt = txt & "�¤س����ö�����Թ��Һ�ԡ�ô����Ը��͹�Թ��ҹ�ҹ����츹Ҥ�� ���ͪ��м�ҹ��� ATM ��Һѭ�ո�Ҥ�ôѧ���</td>"
        txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td></td>"
        txt = txt & " <td><table width='510' border='0' cellpadding='2' cellspacing='1' bgcolor='#95acc6'>"
        txt = txt & " <TR bgcolor='#bfcfe0'>"
        txt = txt & " <TD><div align='center'><strong>��Ҥ��</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'><strong>�Ң�</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'><strong>���ͺѭ��</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'><strong>�Ţ���ѭ��</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'><strong>������</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " </TR>"
        txt = txt & " <TR bgcolor='#fff4e3'>"
        txt = txt & " <TD><div align='center'>��ا෾</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>�����ҡ</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>�����͹����</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center' > 180 - 7 - 96871 - 2"
        txt = txt & " </div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>�����Ѿ��</div>"
        txt = txt & " </TD>"
        txt = txt & " </TR>"
        txt = txt & " <TR bgcolor='#eaf1ff'>"
        txt = txt & " <TD><div align='center'>��ԡ���</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>���¶��������˧</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>�����͹����</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center' > 736 - 2 - 48193 - 1"
        txt = txt & " </div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>�����Ѿ��</div>"
        txt = txt & " </TD>"
        txt = txt & " </TR>"
        txt = txt & " </table>"
        txt = txt & " </td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>��ѧ�ҡ���س�����Թ���Ǥس����ö�駪����Թ�ͧ�س�������� ""�駪����Թ"" ��к���èѴ��âͧ��Ҫԡ<br>"
        txt = txt & "�����Ṻ��ѡ�ҹ����͹�Թ��Һ�ԡ��</td>"
        txt = txt & " </tr>"

        'txt = txt & " <tr>"
        'txt = txt & " <td height='10' colspan='2'></td>"
        'txt = txt & " </tr>"
        'txt = txt & " <tr>"
        'txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        'txt = txt & " <td>����Ѻ��Һ�ԡ�� 1,000 �ҷ ���仡�س�������ῡ����ѡ���� � ������ 3% ���ѧ�����͹���꡴���</td>"
        'txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>��ѧ�ҡ������Ѻ����׹�ѹ��ê����Թ�ҡ��Ҥ������ �ҧ��Ҩйӻ�С�Ȣͧ�س����ʴ� (online) 㹷ѹ��<br>"
        txt = txt & "��Фس�����Ѻ���������׹�ѹ�ҡ��� ��駹��س����ö����к����͵�Ǩ�ͺʶҹл�С����</td>"
        txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " </table>"
        txt = txt & " </td>"
        txt = txt & " </tr>"


        Return txt
    End Function
    Private Function showWhatNext0() As String
        Dim txt As String

        txt = "<tr>"
        txt = txt & "<td background='../../../images/table/g_693.gif'><table border='0' align='center' cellpadding='0' cellspacing='0' class='Font_black_LH_17px'>"
        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>��ѧ�ҡ��Ǩ�ͺ���������� �ҧ��Ҩд��Թ����͹�Ź� (online) ���ѹ��</td>"
        txt = txt & " </tr>"



        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " </table>"
        txt = txt & " </td>"
        txt = txt & " </tr>"


        Return txt
    End Function
    Private Function getStartDate(ByVal noticeid As Integer, ByVal selectDate As String) As DateTime
        Dim myDate As DateTime

        If selectDate = "old" Then
            myDate = NoticeDB.getNoticeStopDate(noticeid)
            myDate = DateAdd(DateInterval.Day, 1, myDate)
        Else
            myDate = DB.getToday()
            myDate = DateAdd(DateInterval.Day, Int(selectDate) + 1, myDate)
        End If


        Return myDate
    End Function
    Private Function getStopDate(ByVal startDate As Date, ByVal package_id As Integer) As Date
        Dim temp_date As Date

        temp_date = DateAdd(DateInterval.Month, PackageDB.getPackageWeek(package_id), startDate)

        Return temp_date
    End Function
    Private Sub showpackage(ByVal packageid As Integer, ByVal invoiceid As Integer, ByVal startDate As DateTime, ByVal price As Double, ByVal fullprice As Double, ByVal remamount As Double, ByVal noticeid As Integer)
        Dim myPack As Package
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        myPack = PackageDB.getPackage(packageid)
        p_type.Text = PackageTypeDB.getPackType(myPack.Package_Category)
        p_name.Text = myPack.Package_Name & "/" & myPack.Package_Week & "M"
        p_area.Text = myPack.Package_AreaStop
        p_period.Text = myPack.Package_Week & " "
        p_start.Text = startDate.ToString("dd/MM/yyyy")

        p_price.Text = "- �" & FormatNumber(price, 2, , , TriState.True) & " --  (" & fullprice & " + " & FormatNumber(remamount, 4, , , TriState.False) & ")"
        If myPack.Package_Price = 0 Then
            'p_price.Text = "���"
            refer.Text = ""
            p_code.Text = ""
            whatNext.Text = showWhatNext0()
        Else
            'p_price.Text = "- �" & FormatNumber(myPack.Package_Price, 2, , , TriState.True) & " -"
            refer.Text = "������ҧ�ԧ��ê����Թ"
            p_code.Text = DealerDB.getDealerABV(NoticeDB.getDealerCode(noticeid)) & invoiceid
            whatNext.Text = showWhatNext()
        End If
        'p_code.Text = DealerDB.getDealerABV(NoticeDB.getDealerCode(noticeid)) & invoiceid


    End Sub
    Private Sub showpackageNew(ByVal packageid As Integer, ByVal invoiceid As Integer, ByVal startDate As String, ByVal noticeid As Integer)
        Dim myPack As Package
        Dim myPrice As Double
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        myPack = PackageDB.getPackage(packageid)
        p_type.Text = PackageTypeDB.getPackType(myPack.Package_Category)
        p_name.Text = myPack.Package_Name & "/" & myPack.Package_Week & "M"
        p_area.Text = myPack.Package_AreaStop
        p_period.Text = myPack.Package_Week & " "
        p_start.Text = startDate
        myPrice = PackageDB.getPackagePrice(packageid)
        'p_price.Text = "- �" & FormatNumber(myPrice, 2, , , TriState.True) & " -"
        If myPrice = 0 Then
            p_price.Text = "���"
            refer.Text = ""
            p_code.Text = ""
            whatNext.Text = showWhatNext0()
        Else
            p_price.Text = "- �" & FormatNumber(myPrice, 2, , , TriState.True) & " -"
            refer.Text = "������ҧ�ԧ��ê����Թ"
            p_code.Text = DealerDB.getDealerABV(NoticeDB.getDealerCode(noticeid)) & invoiceid
            whatNext.Text = showWhatNext()
        End If
        'p_code.Text = DealerDB.getDealerABV(NoticeDB.getDealerCode(noticeid)) & invoiceid


    End Sub
    Private Function addInvoice(ByVal noticeid As Integer, ByVal packageid As Integer, ByVal startDate As DateTime, ByVal price As Double) As Integer
        Dim myInvoice As invoice
        Dim ans As Integer

        myInvoice.id = noticeid
        myInvoice.Notice_DetailID = 0
        myInvoice.packageid = packageid
        myInvoice.week = PackageDB.getPackageWeek(packageid)
        myInvoice.price = price
        myInvoice.startDate = startDate
        myInvoice.status = 3

        ans = InvoiceDB.insertInvoice2(myInvoice)

        Return ans
    End Function
    Private Function addInvoiceNew(ByVal noticeid As Integer, ByVal packageid As Integer, ByVal startDate As String, ByVal status As Integer) As Integer
        Dim myInvoice As invoice
        Dim ans As Integer

        myInvoice.id = noticeid
        myInvoice.Notice_DetailID = 0
        myInvoice.packageid = packageid
        myInvoice.week = PackageDB.getPackageWeek(packageid)
        myInvoice.price = PackageDB.getPackagePrice(packageid)
        'myInvoice.startDate = ConfigurationSettings.AppSettings("firstDate")
        myInvoice.startDateTxt = startDate
        myInvoice.status = status

        ans = InvoiceDB.insertInvoice2(myInvoice)

        Return ans
    End Function
    Private Function addInvoiceChange(ByVal noticeid As Integer, ByVal packageid As Integer, ByVal startDate As String, ByVal stDate As DateTime, ByVal status As Integer) As Integer
        Dim myInvoice As invoice
        Dim ans As Integer

        myInvoice.id = noticeid
        myInvoice.Notice_DetailID = 0
        myInvoice.packageid = packageid
        myInvoice.week = PackageDB.getPackageWeek(packageid)
        myInvoice.price = PackageDB.getPackagePrice(packageid)
        myInvoice.startDate = stDate
        myInvoice.startDateTxt = startDate
        myInvoice.status = status

        ans = InvoiceDB.insertInvoice2(myInvoice)

        Return ans
    End Function
    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Dim cust_id As Integer = Session("Ccust_id")
        Session.Remove("Ccust_id")

        Response.Redirect("../lists/business_package_list.aspx?cust_id=" & cust_id)

    End Sub
End Class
