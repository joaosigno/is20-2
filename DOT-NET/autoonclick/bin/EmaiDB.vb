Imports System.Web.Mail
Module EmailDB
    
    Public Sub sendMailQuestion(ByVal email As String, ByVal custID As Integer, ByVal carID As Integer, ByVal cat As Integer, ByVal mailDetail As mailQuestion)


        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = email
        myMail.From = "Question@auto-onclick.com"
        myMail.Subject = "Question about Advertise#" & NoticeDB.getNoticeCode2(carID, cat) & " from www.Auto-Onclick.com's member."
        myMail.BodyFormat = MailFormat.Html

        mailbody = "�Ӷ���ҡ�س " & mailDetail.name & "<BR>"
        mailbody = mailbody & "����ǡѺ��С�������Ţ��ҧ�ԧ  #" & NoticeDB.getNoticeCode2(carID, cat) & "<BR>"
        mailbody = mailbody & "Email: " & mailDetail.mail & "<BR>"
        mailbody = mailbody & "Tel  : " & mailDetail.tel & "<BR><BR>"
        mailbody = mailbody & "�Ӷ�� : " & mailDetail.question & "<BR>"
        myMail.Body = mailbody

        Try
            SmtpMail.SmtpServer.Insert(0, "127.0.0.1")
            SmtpMail.Send(myMail)
        Catch ex As Exception
            Dim x As String
            x = ex.Message

        End Try


        myMail = Nothing


    End Sub
    Public Sub sendMailQuestion2(ByVal mailDetail As mailQuestion)


        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = mailDetail.mail

        myMail.From = mailDetail.mail_From
        myMail.Subject = mailDetail.topic
        myMail.BodyFormat = MailFormat.Html

        mailbody = "�Ӷ���ҡ�س " & mailDetail.name & "<BR>"
        mailbody = mailbody & "Email: " & mailDetail.mail_From & "<BR>"
        mailbody = mailbody & "�Ӷ�� : " & mailDetail.question & "<BR>"
        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing


    End Sub
    Public Sub sendMailWarn(ByVal mailDetail As mailQuestion, ByVal mailWarn As WarnMail)


        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = mailDetail.mail

        myMail.From = mailDetail.mail_From
        myMail.Subject = "��ź��С��"
        myMail.BodyFormat = MailFormat.Html

        mailbody = "��ź��С�Ȩҡ�س " & mailDetail.name & "<BR>"
        mailbody = mailbody & "��Ǣ��: " & mailDetail.topic & "<BR>"
        mailbody = mailbody & "Email: " & mailDetail.mail_From & "<BR>"
        mailbody = mailbody & "��С���Ţ���: " & mailWarn.Dealer_Notice_Abc & mailWarn.Detail_Id & "<BR>"
        mailbody = mailbody & "������: " & mailWarn.Dealer_Type & "<BR>"
        mailbody = mailbody & "�ͧ�س: " & mailWarn.Customer_Username & " - " & mailWarn.Customer_Name & " " & mailWarn.Customer_Surname & "<BR><BR>"
        mailbody = mailbody & "��觷��ŧ��С��: " & mailWarn.Brand_name & "<BR>"
        mailbody = mailbody & "Email ��Ңͧ��С��: " & mailWarn.Customer_Email & "<BR>"
        mailbody = mailbody & "��������Ңͧ��С��: " & mailWarn.Customer_Phone1 & "<BR><BR>"

        mailbody = mailbody & "���˵ء����ź : " & mailDetail.question & "<BR>"
        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing


    End Sub
    Public Sub sendMailRequest(ByVal email As String)

        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = email
        myMail.From = "requestSearch@auto-onclick.com"
        myMail.Subject = "��¡�ýҡ���ҡѺ Auto-Onclick.com"
        myMail.BodyFormat = MailFormat.Html

        mailbody = "<table width='848' border='0' cellpadding='0' cellspacing='0' ID='Table1' >"
        mailbody = mailbody & "<tr bgcolor='#FFFFFF' >"
        mailbody = mailbody & "<td height='99' colspan='3' valign='middle'><table width='848' height='99' border='0' cellpadding='0' cellspacing='0' background='http://www.auto-onclick.com/images/main_table/ao_heading_848x99.jpg'"
        mailbody = mailbody & "ID='Table2'>"
        mailbody = mailbody & "<tr>"
        mailbody = mailbody & "<td><div align='right'><img src='http://www.auto-onclick.com/images/objects/full-banner-468-60.gif' width='468' height='60'></div>"
        mailbody = mailbody & "</td>"
        mailbody = mailbody & "<td width='175'></td>"
        mailbody = mailbody & "</tr>"
        mailbody = mailbody & "</table>"
        mailbody = mailbody & "</td>"
        mailbody = mailbody & "</tr>"
        mailbody = mailbody & "</table>"

        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing

    End Sub
    Public Sub sendMailContact(ByVal mailContact As mailRequest)

        Dim myMail As New MailMessage
        Dim myCust As A_Customer = CustomerDB.getA_customer(mailContact.reqTo)
        Dim mailbody As String
        myMail.To = myCust.email
        myMail.From = "Question@auto-onclick.com"
        myMail.Subject = "Question from www.Auto-Onclick.com's member."
        myMail.BodyFormat = MailFormat.Html

        mailbody = "���¹ " & TitleDB.getTitleName(myCust.title) & myCust.name & " " & myCust.surname & "<BR>"
        mailbody = mailbody & "�Ӷ���ҡ " & mailContact.title & mailContact.name & "<BR>"
        mailbody = mailbody & "Email: " & mailContact.email & "<BR>"
        mailbody = mailbody & "Tel  : " & mailContact.phone & "<BR><BR>"
        mailbody = mailbody & "�դ������ʧ�� : " & mailContact.request & "<BR>"
        mailbody = mailbody & "��سҵԴ��͡�Ѻ : " & mailContact.callback & "<BR>"
        mailbody = mailbody & "���� : " & mailContact.more & "<BR>"


        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing

    End Sub
    Public Sub sendMail2Fr(ByVal mailDetail As send2Friend, ByVal myCar As Object, ByVal cat As Integer)

        Dim picURL As String = ConfigurationSettings.AppSettings("picURL")
        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = mailDetail.send_Email

        myMail.From = mailDetail.send_EmailFrom
        myMail.Subject = "��С�Ȩҡ�к��ͧ www.auto-onclick.com"
        myMail.BodyFormat = MailFormat.Html

        mailbody = "��С�ȹ����١�Ѵ���¤س " & mailDetail.send_By & "<BR>"
        mailbody = mailbody & "Email: " & mailDetail.send_EmailFrom & "<BR>"
        mailbody = mailbody & "��ͤ����ҡ�֧: " & mailDetail.send_Topic & "<BR>"
        mailbody = mailbody & "<BR>"
        Select Case cat
            Case 1
                mailbody = mailbody & "��ҹ����ö��Ҵٻ�С�ȹ����ҡ�ǻ�ͧ��� : <a href='" & picURL & "public/startpage/search3_detail_car00.aspx?carid=" & myCar.id & "' >���꡷����</a><BR>"
                mailbody = mailbody & CarDB.getSend2Fr(myCar)
            Case 2
                mailbody = mailbody & "��ҹ����ö��Ҵٻ�С�ȹ����ҡ�ǻ�ͧ��� : <a href='" & picURL & "public/startpage/search3_detail_moto00.aspx?carid=" & myCar.id & "' >���꡷����</a><BR>"
                mailbody = mailbody & BikeDB.getSend2Fr(myCar)
            Case 3
                mailbody = mailbody & "��ҹ����ö��Ҵٻ�С�ȹ����ҡ�ǻ�ͧ��� : <a href='" & picURL & "public/startpage/search3_detail_truck00.aspx?carid=" & myCar.id & "' >���꡷����</a><BR>"
                mailbody = mailbody & TruckDB.getSend2Fr(myCar)
            Case 4, 5
                mailbody = mailbody & "��ҹ����ö��Ҵٻ�С�ȹ����ҡ�ǻ�ͧ��� : <a href='" & picURL & "public/startpage/search3_detail_part00.aspx?carid=" & myCar.id & "' >���꡷����</a><BR>"
                mailbody = mailbody & PartsDB.getSend2Fr(myCar)
            Case 6
                mailbody = mailbody & "��ҹ����ö��Ҵٻ�С�ȹ����ҡ�ǻ�ͧ��� : <a href='" & picURL & "public/startpage/search3_detail_job00.aspx?jobId=" & myCar.Job_Id & "' >���꡷����</a><BR>"
                mailbody = mailbody & JobDB.getSend2Fr(myCar)

        End Select
        'mailbody = mailbody & "��С���Ţ���: " & mailWarn.Dealer_Notice_Abc & mailWarn.Notice_Id & "<BR>"
        'mailbody = mailbody & "������: " & mailWarn.Dealer_Type & "<BR>"
        'mailbody = mailbody & "�ͧ�س: " & mailWarn.Customer_Username & " - " & mailWarn.Customer_Name & " " & mailWarn.Customer_Surname & "<BR>"
        'mailbody = mailbody & "��觷��ŧ��С��: " & mailWarn.Brand_name & "<BR>"
        'mailbody = mailbody & "Email ��Ңͧ��С��: " & mailWarn.Customer_Email & "<BR>"
        'mailbody = mailbody & "��������Ңͧ��С��: " & mailWarn.Customer_Phone1 & "<BR>"
        'mailbody = mailbody & "���˵ء����ź : " & mailDetail.question & "<BR>"
        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing


    End Sub

    Structure mailQuestion
        Dim name As String
        Dim mail As String
        Dim mail_From As String
        Dim tel As String
        Dim question As String
        Dim topic As String
    End Structure

    Structure mailRequest
        Dim reqTo As Integer
        Dim title As String
        Dim name As String
        Dim request As String
        Dim phone As String
        Dim callback As String
        Dim email As String
        Dim more As String
    End Structure

End Module
