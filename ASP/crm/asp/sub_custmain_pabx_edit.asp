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
<body bgcolor="#E8F8FF" onLoad="document.form1.name.focus();">
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
	Dim cgcode, pabxid
	cgcode = Request.QueryString("cgcode")
	pabxid = Request.QueryString("pabxid")
%>
<form name="form1" method="post" action="">
  <table width="300" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
<%
	Sql = "SELECT PABXID, PABXNAME, SPEC, LINEIN, LINEOUT FROM PABX WHERE (CG_CODE = '" & cgcode & "') AND (PABXID = " & pabxid & ") "
	Rs2.Open Sql, Session("Conn1"),1,3	
%>
    <tr> 
      <td width="35%"><div align="right"><font color="#4B0097" size="2"><strong>PABX 
          ����</strong></font></div></td>
      <td width="65%">&nbsp; <input name="name" type="text" class="text" id="name" value="<%=Rs2("PABXNAME")%>" size="30" maxlength="100" onkeyPress="if(window.event.keyCode==13){document.form1.spec.focus();}"> 
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
        <input name="pabxid" type="hidden" id="pabxid" value="<%=pabxid%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font size="2">���</font></strong></font></div></td>
      <td width="80%">&nbsp; <input name="spec" type="text" class="text" id="spec" value="<%=Rs2("SPEC")%>" size="30" maxlength="100"  onkeyPress="if(window.event.keyCode==13){document.form1.linein.focus();}"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">�ӹǹ����</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="linein" type="text" class="text" id="num2" onkeyPress="if(window.event.keyCode==13){document.form1.lineout.focus();}" value="<%=Rs2("LINEIN")%>" size="10" maxlength="10"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font size="2">�ӹǹ��¹͡</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="lineout" type="text" class="text" id="total2" onkeyPress="if(window.event.keyCode==13){document.form1.send.focus();}" value="<%=Rs2("LINEOUT")%>" size="10" maxlength="10"></td>
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
	if(document.form1.name.value==""){
		alert('��س��кت����PABX');
		document.form1.name.focus();
		return;
	}
	if(document.form1.spec.value==""){
		alert('��س��к����PABX');
		document.form1.spec.focus();
		return;
	}
	if(document.form1.linein.value==""){
		alert('��س��кبӹǹ����');
		document.form1.linein.focus();
		return;
	}
	if(isFinite(document.form1.linein.value)==false){
		alert('��س��кبӹǹ�������١��ͧ');
		document.form1.linein.focus();
		return;
	}
	if(document.form1.lineout.value==""){
		alert('��س��кبӹǹ��¹͡');
		document.form1.lineout.focus();
		return;
	}
	if(isFinite(document.form1.lineout.value)==false){
		alert('��س��кبӹǹ��¹͡���١��ͧ');
		document.form1.lineout.focus();
		return;
	}
	
	if(confirm('�׹�ѹ��úѹ�֡������')){
		top.RunWindow('Temp1','temp_save_sub_pabx_edit.asp');
		top.HideWindow('Dialog1');
	}
}
</script>
</body>
</html>
