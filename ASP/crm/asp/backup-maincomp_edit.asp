<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	end if
%>
<%
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Dim cus_id, cmcode, cmname, cbus, nbus
	cus_id = Request.QueryString("cus_id")
	cmcode = Request.QueryString("cmcode")

	if cmcode<>"" then
		Sql = "SELECT COMP_MAIN.CM_NAME, COMP_MAIN.CBUS, BUSINESS_TYPE.NBUS FROM COMP_MAIN INNER JOIN BUSINESS_TYPE ON COMP_MAIN.CBUS = BUSINESS_TYPE.CBUS WHERE (COMP_MAIN.CM_CODE = N'" & cmcode & "') "
		Rs.Open Sql,Session("Conn1"),1,3
		
		if not Rs.EOF and not Rs.BOF then
			cmname = Rs("cm_name")
			cbus = Rs("cbus")
			nbus = Rs("nbus")
		end if
	end if
%>
<form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="8%">&nbsp;</td>
            <td><b><font color="#4B0097" face="JasmineUPC" size="5">�������١���</font></b></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="55%"><font size="2" color="#4B0097">������к� : <%=Session("User_Name")&"  ( "&Session("User_Id")&" )"%></font></td>
            <td><font size="2" color="#4B0097">�ѹ������к� : <%=formatDateTime(Session("Date_Now"),1)%></font></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td><b><font color="#4B0097" size="4" face="JasmineUPC">��䢢����������١���</font></b></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><div align="right"><font size="2" color="#4B0097">&nbsp;�����١���&nbsp;</font>
      <input name="cmcode2" type="text" id="cmcode2" value="<%=cmcode%>" size="6" maxlength="5" onkeypress="if(window.event.keyCode==13){document.form1.search.focus();}">
      <input name="search" type="button" id="search" value="����" style="cursor:hand" onClick="top.RunWindow('Desktop3','maincomp_edit.asp?cus_id=<%=cus_id%>&cmcode='+document.form1.cmcode2.value);"></div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
<%
	if cbus<>"" then
%>
    <tr>
      <td><table width="70%" height="67" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" id="AutoNumber21" style="border-collapse: collapse">
          <tr> 
            <td width="40%" valign="bottom"><div align="right"><font size="2" color="#4B0097">�����١���</font></div></td>
            <td width="2%" valign="bottom" rowspan="4"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="58%" valign="bottom"><div align="left"><font size="2" color="#4B0097"><%=cmcode%>
                <input name="cmcode" type="hidden" id="cmcode" value="<%=cmcode%>">
                </font></div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">������١��Ҹ�áԨͧ���</font></div></td>
            <td valign="bottom"><div align="left"><font size="2" color="#4B0097"><%=cbus&" - "&nbus%>
                <input name="cbus" type="hidden" id="cbus" value="<%=cbus%>">
                </font></div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">�����١���</font><font size="2" color="#FF0000">(����ͧ�к��Ң�)</font></div></td>
            <td valign="bottom"><div align="left"><input name="cmname" type="text" id="cmname" value="<%=cmname%>" size="40" maxlength="50" onKeyPress="if(window.event.keyCode==13){document.form1.send.focus();}"></div></td>
          </tr>
        </table></td>
    </tr>
<%
else
%>
    <tr>
      <td><div align="center"><font color="#FF0000">��辺������</font></div></td>
    </tr>
<%
	end if
%>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><div align="center">
<%
	if cbus<>"" then
%>
          <input name="send" type="button" id="send" value=" �ѹ�֡������" style="cursor:hand" onClick="top.RunWindow('Temp1','temp_save_maincomp_edit.asp');">&nbsp;&nbsp;
<%
	end if
%>
          <input id="back" style="cursor:hand" type="button" value=" ��Ѻ˹����� " name="back" onClick="top.HideWindow('Desktop3');">
          <input name="cus_id" type="hidden" id="cus_id" value="<%=cus_id%>">
        </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>