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
	Dim  Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim compid, service, speed, num, total, setup, cgcode, maxid, pomoid , ratio
	compid = Request.Form("compid")
	service = Request.Form("service")
	speed = Request.Form("speed")
	pomoid = Request.Form("pomoid")
	if pomoid ="" then
		pomoid="null"
	end if
	num = Request.Form("num")
	total = Request.Form("total")
	setup = Request.Form("setup")
	ratio = Request.Form("ratio")
	cgcode = Request.Form("cgcode")

	maxid = 1
	Sql = "SELECT MAX(NVID) AS NVID FROM NONVOICE_CUST_USE WHERE (CG_CODE = '" & cgcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("NVID")) then
			maxid = Rs("NVID")+1
		end if
	end if
	Rs.Close

	Sql = "INSERT INTO NONVOICE_CUST_USE(NVID, CG_CODE, COMPID, NONID, SPEEDID, RATIOID,PROMOID, NUM, TOTAL, SERVICE)  VALUES (" & maxid & ",'" & cgcode & "', "& compid & ", "& service &", "& speed & ",'"  & ratio & "'," & pomoid & "," & num & "," & total & "," & setup & ") "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>');
	top.HideWindow('Dialog1');
</script>
</BODY>
</HTML>