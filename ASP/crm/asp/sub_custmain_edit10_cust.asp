<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.compid.focus();">
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
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
%>
<%
	Dim cgcode, showpdate, showsdate, pdate, sdate, prob_id
	cgcode = Request.QueryString("cgcode")
	prob_id = Request.QueryString("prob_id")
%>
<form name="form1" method="post" action="">
  <table width="450" height="160" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="35%" height="22"><div align="right"><font color="#4B0097" size="2"><strong>�ѭ�ҷ���Դ</strong></font></div></td>
      <td width="65%">&nbsp; <select name="cpid" id="cpid" onkeyPress="if(window.event.keyCode==13){document.form1.pdate.focus();}">
<%
	  Sql = "SELECT CUST_PROB.CONAME, PROBLEM.PID, PROBLEM.PDATE, SOLVE.SOLID, SOLVE.SOLNAME, PROBLEM.SDATE FROM PROBLEM INNER JOIN SOLVE ON PROBLEM.SOLID = SOLVE.SOLID INNER JOIN CUST_PROB ON PROBLEM.PID = CUST_PROB.CPID WHERE PROBLEM.CG_CODE = '"& cgcode &"' AND PROBLEM.PROB_ID = '"& prob_id &"' AND PROBLEM.TYPE= 'c'"	 
	  Rs.Open SQL, Session("Conn1"),1,3
%>	
      <option value="<%=Rs("PID")%>"><%=Rs("CONAME")%></option>
<%
	
	Sql = "SELECT CPID, CONAME FROM CUST_PROB"
	Rs2.Open SQL, Session("Conn1"),1,3	

	do while not Rs2.EOF
%>
          <option value="<%=Rs2("CPID")%>"><%=Rs2("CONAME")%></option>
          <%
	Rs2.Movenext
loop
Rs2.Close
%>
        </select>
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
		<input name="prob_id" type="hidden" id="prob_id" value="<%=prob_id%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>�ѹ����Դ�ѭ��</strong></font></div></td>
      <td width="80%">&nbsp; <input name="showpdate" type="text" class="text" id="showpdate" size="18" readonly value="<%=left(FormatDateTime(Rs("PDATE"),1),len(FormatDateTime(Rs("PDATE"),1))-4)&right(FormatDateTime(Rs("PDATE"),1),4)+543%>">
        <input name="pdate" type="hidden" id="pdate" value="<%=Rs("PDATE")%>">
        <input name="popdate1" type="button" id="popdate1" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog2','280','120','250px','260px','calendar-sdmy-ddmy_dia2.asp?input1=top.Dialog1.document.form1.pdate&input2=top.Dialog1.document.form1.showpdate');"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font size="2">������</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<select name="solid" id="solid" onkeyPress="if(window.event.keyCode==13){document.form1.sdate.focus();}">
          <option value="<%=Rs("SOLID")%>"><%=Rs("SOLNAME")%></option>
          <%
	Sql = "SELECT SOLID, SOLNAME FROM SOLVE"
	Rs2.Open SQL, Session("Conn1"),1,3	

do while not Rs2.EOF
%>
          <option value="<%=Rs2("SOLID")%>"><%=Rs2("SOLNAME")%></option>
          <%
	Rs2.Movenext
loop
Rs2.Close
%>
        </select></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>�ѹ���Ҵ��Ҩ�����</strong></strong></font><font color="#4B0097"><strong></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="showsdate" type="text" class="text" id="showsdate" size="18" readonly value="<%=left(FormatDateTime(Rs("SDATE"),1),len(FormatDateTime(Rs("SDATE"),1))-4)&right(FormatDateTime(Rs("SDATE"),1),4)+543%>"> <input name="sdate" type="hidden" id="sdate" value="<%=Rs("SDATE")%>">
        <input name="popdate2" type="button" id="popdate2" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog2','280','120','250px','260px','calendar-sdmy-ddmy_dia2.asp?input1=top.Dialog1.document.form1.sdate&input2=top.Dialog1.document.form1.showsdate');"></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value=" �ѹ�֡������ " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  �Դ˹�ҵ�ҧ  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script language="JavaScript">

function dosend(){
	if(document.form1.cpid.value==""){
		alert('��س��кػѭ�ҷ���Դ���');
		document.form1.cpid.focus();
		return;
	}
	if(document.form1.pdate.value==""){
		alert('��س��к��ѹ����Դ�ѭ��');
		document.form1.pdate.focus();
		return;
	}
	
	if(document.form1.solid.value==""){
		alert('��س��к��Ըա����䢻ѭ��');
		document.form1.solid.focus();
		return;
	}
	if(document.form1.sdate.value==""){
		alert('��س��к��ѹ���Ҵ��Ҩ���䢻ѭ����');
		document.form1.sdate.focus();
		return;
	}
	
	if(confirm('�׹�ѹ��úѹ�֡������')){
		top.RunWindow('Temp1','temp_save_sub_custmain_edit10_cust.asp');
	}
}
</script>
</body>
</html>
