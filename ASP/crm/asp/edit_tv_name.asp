<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
		<meta http-equiv=Expires content=0>
		<meta http-equiv=Content-Type content="text/html; charset=Windows-874">
		<link href=/include/stylesheet2.css rel=stylesheet type=text/css>
</head>
<body>
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%end if
   	dim TVNAME    , TVID
    Dim Rs,  Sql
	
	
	 TVNAME = Request.QueryString("TVNAME")
	 TVID = Request.QueryString("TVID")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	
	Sql = "UPDATE TV  SET  TVNAME= '" + TVNAME + "'  WHERE TVID = " + TVID 
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','tv.asp');
		</script>
		
 </body>
</html>