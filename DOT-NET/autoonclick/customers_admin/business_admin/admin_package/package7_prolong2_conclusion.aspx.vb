Imports System.Globalization
Imports System.Threading
Public Class package7_prolong2_conclusion
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents p_type As System.Web.UI.WebControls.Label
    Protected WithEvents p_name As System.Web.UI.WebControls.Label
    Protected WithEvents p_area As System.Web.UI.WebControls.Label
    Protected WithEvents p_period As System.Web.UI.WebControls.Label
    Protected WithEvents p_start As System.Web.UI.WebControls.Label
    Protected WithEvents p_price As System.Web.UI.WebControls.Label
    Protected WithEvents p_code As System.Web.UI.WebControls.Label
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
        Dim maxdate As DateTime
        Dim invoiceid As Integer
        Dim packageid As Integer
        Dim prolongid As Integer
        Dim price2 As Double
        Dim myNoice As noticeS
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        Session("isFirstTime") = "NO"

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            If Not IsPostBack Then
                packageid = Request.QueryString("rdNewPack")
                myNoice = NoticeDB.getNoticesInfoD(Session("noticeid"))

                If myNoice.status = 5 Then
                    maxdate = DB.getToday()
                Else
                    maxdate = NoticeDB.getNoticeStopDate(Session("noticeid"))
                End If
                'maxdate = DateAdd(DateInterval.Day, 1, maxdate)
                price2 = PackageDB.getPackagePrice(packageid)


                If PackageDB.getPackagePrice(packageid) = 0 Then
                    invoiceid = addInvoice(Session("noticeid"), packageid, maxdate, price2)
                    TmpPaymentDb.insertTmpPayment(1, invoiceid, CInt(Session("cust_id")), DB.getToday(), DB.getToday().ToString("HH:mm"), 99, 0, "Promotion Free Trial")
                    InvoiceDB.updatePaidInvoice(invoiceid)
                Else
                    invoiceid = addInvoice(Session("noticeid"), packageid, maxdate, price2)
                End If
                'invoiceid = addInvoice(Session("noticeid"), packageid, maxdate, price2)

                Dim myProlong As ProlongTx
                myProlong.NoticeID = Session("noticeid")
                myProlong.InvoiceID = invoiceid
                myProlong.PackageID = packageid
                myProlong.Date_Start = maxdate
                myProlong.Date_Stop = getStopDate(maxdate, packageid)
                myProlong.Period = PackageDB.getPackageWeek(packageid)
                myProlong.Expire = 0
                prolongid = ProlongDB.insertProlong(myProlong)

                setProlongNotice(Session("noticeid"), "P", "A_PC_red_underline")
                'showpackage(packageid, invoiceid, maxdate, price2)
                showpackageNew(packageid, invoiceid, maxdate, Session("noticeid"))
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
    Private Function getStopDate(ByVal startDate As Date, ByVal package_id As Integer) As Date
        Dim temp_date As Date

        temp_date = DateAdd(DateInterval.Month, PackageDB.getPackageWeek(package_id), startDate)

        Return temp_date
    End Function
    Private Sub showpackage(ByVal packageid As Integer, ByVal invoiceid As Integer, ByVal startDate As DateTime, ByVal price As Double)
        Dim myPack As Package
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        myPack = PackageDB.getPackage(packageid)
        p_type.Text = PackageTypeDB.getPackType(myPack.Package_Category)
        p_name.Text = myPack.Package_Name & "/" & myPack.Package_Week & "M"
        p_area.Text = myPack.Package_AreaStop
        p_period.Text = myPack.Package_Week & " "
        'p_start.Text = startDate.ToString("dd/MM/yyyy")
        p_start.Text = "�ѹ����ѧ�׹�ѹ��ê����Թ"
        p_price.Text = "- �" & FormatNumber(price, 2, , , TriState.True) & " -"
        p_code.Text = DealerDB.getDealerABV(NoticeDB.getDealerCode(Session("noticeid"))) & invoiceid


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
        myInvoice.status = 2

        ans = InvoiceDB.insertInvoice2(myInvoice)

        Return ans
    End Function

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Response.Redirect("car/package2_list.aspx")
    End Sub
End Class
