<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<HTML>
<HEAD>
	<meta http-equiv=Expires content=0>
	<meta http-equiv=Content-Type content="text/html; charset=Windows-874">
	<link href=/include/stylesheet.css rel=stylesheet type=text/css>
</HEAD>
<BODY>
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
%>
<%
	Dim CDONTS, emailfrom, emailto, subject, body, body2, side_ab, name, sur
	Dim empid, Rs, Sql
	empid = Request.QueryString("empid")
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Sql = "DELETE REQUEST_LOGIN WHERE EMP_ID = '"& empid &"'"
	Rs.Open Sql,Session("Conn1"),1,3

	emailfrom = "CRM"
	subject = "CRM : �����͹��ѵ� user login"
	body2 = ""
	body2 = body2 & "<br>"
	body2 = body2 & "�к��������ö�ӡ��͹��ѵ� user login �ͧ��ҹ��"

	body = ""
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='" & empid & "' "
	Rs.Open Sql,Session("Conn1"),1,3
		emailto = Rs("EMAIL")
		body = body & "���¹�س" & Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") & " "
		body = body & body2
	Rs.Close
	
	set CDONTS = Server.CreateObject("CDONTS.NewMail")
	CDONTS.From = emailfrom
	CDONTS.To = emailto
	CDONTS.BodyFormat = 0
	CDONTS.MailFormat = 0
	CDONTS.Subject = subject
	CDONTS.Body = body
	CDONTS.Send
%>
<script language=javascript>
	alert('�ѹ�֡���������º����');
	top.Desktop2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop2','create_level.asp');
</script>
</BODY>
</HTML>