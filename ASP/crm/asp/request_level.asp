<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<%
		Dim Sql, Rs1, Rs2, Rs3, show, empid
			set Rs1 = Server.CreateObject("Adodb.RecordSet")
			set Rs2 = Server.CreateObject("Adodb.RecordSet")
			set Rs3 = Server.CreateObject("Adodb.RecordSet")
			show = Request.Form("show")
			empid = Request.Form("empid")
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF">
<div align="center" name="form1" method="post" action="">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">���Է����ҹ�к� 
                  CRM </font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="55%">&nbsp;</td>
                <td><font size="2" color="#4B0097">�ѹ������к� : <%=formatDateTime(Session("Date_Now"),1)%></font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td> <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td><font size="2" color="#FF8C24"><b>����Ѻ��ҹ㴷���������ҹ�к� 
                  CRM Version</b>&nbsp;&nbsp;��س�������ʾ�ѡ�ҹ�ͧ��ҹ&nbsp;��Ф�ԡ������Ǩ�ͺ������&nbsp;&nbsp;���͵�Ǩ�ͺ�����ž�ѡ�ҹ�ͧ��ҹ&nbsp;&nbsp;�ҡ��鹤�ԡ�����觢����Ŷ֧�������к�&nbsp;����ͼ������к���˹��Է�ԡ����ҹ���Ѻ��ҹ���º�������� 
                  �к����� E-Mail �駼�����Һ�ѹ��</font> </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td> <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td><font size="2" color="#FF8C24"><b>����Ѻ��ҹ㴷������ҹ�к� 
                  CRM Version ����ҡ�͹</b>&nbsp;&nbsp;��ҹ������ö��ҹ�к������ѹ��&nbsp;&nbsp;���� 
                  Login ��� Password ������ Mail �ͧ��ҹ&nbsp;&nbsp;������ͧ���Է�ԡ����ҹ����</font> 
                </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td> <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">���ʾ�ѡ�ҹ 
                    <input name="empid" type="text" class="text" id="empid" size="10" maxlength="4" value="<%=empid%>">
                    <input name="ok" type="button" id="ok" value="��Ǩ�ͺ������" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="doloaddata();">
                    </font></div></td>
              </tr>
            </table>
            <font color="#4B0097" size="2">&nbsp; </font></td>
        </tr>
        <%
		if show <> "" then
		Sql = "SELECT TOP 100 PERCENT EMP_ID FROM EMPLOYEE WHERE (EMP_ID = '"&empid&"')"
		Rs1.Open Sql, Session("Conn1"),1,3
		if not Rs1.EOF and not Rs1.BOF then
			Sql = "SELECT EL_EMPID FROM EMP_LEVEL WHERE (EL_EMPID = '"&empid&"')"
			Rs2.Open Sql, Session("Conn1"),1,3
			if Rs2.EOF or Rs2.BOF then
				Sql = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, JOB.EMP_THAI_POSITION_NAME, ORGANIZATION.ORGANIZE_THAI_DESC, PROVINCE.AREA, PROVINCE.PROVINCE FROM EMPLOYEE INNER JOIN JOB ON EMPLOYEE.POSITION_CODE = JOB.POSITION_CODE INNER JOIN ORGANIZATION ON EMPLOYEE.ORGANIZE_CODE = ORGANIZATION.ORGANIZE_CODE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (EMPLOYEE.EMP_ID = '"&empid&"')"
				Rs3.Open Sql, Session("Conn1"),1,3
		%>
        <tr> 
          <td><table width="50%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="30%"><div align="right"><font color="#4B0097" size="2">���ʾ�ѡ�ҹ</font></div></td>
                <td width="2%" rowspan="7"><font size="2" color="#4B0097">&nbsp;<img src="../images/blank.gif" width="1" height="1"></font></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("EMP_ID")%>
              </font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">����-ʡ��</font></div></td>
                <td><font color="#4B0097" size="2"><%=Rs3("TITLE_THAI")&Rs3("NAME_THAI")&"  "&Rs3("SURNAME_THAI")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">���˹�</font></div></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("EMP_THAI_POSITION_NAME")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4b0097" size="2">˹��§ҹ</font></div></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("ORGANIZE_THAI_DESC")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">�Ҥ��áԨ</font></div></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("AREA")%></font></td>
              </tr>
              <tr> 
                <td height="22"><div align="right"><font color="#4B0097" size="2">�ѧ��Ѵ</font></div></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("PROVINCE")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">�����õԴ���</font></div></td>
                <td width="68%"><input name="req_tel" type="text" class="text" id="tel" value="" size="20"  onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}"></td>
              </tr>
            </table>
            <% else %>
            <table width="50%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="100%"><div align="center"><strong><font color="#4B0097" size="4">���Է�������ҹ�к�����</font></strong></div></td>
              </tr>
            </table>
            <% end if %>
            <% else %>
            <table width="50%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="100%"><div align="center"><strong><font color="#4B0097" size="4">��辺�����ž�ѡ�ҹ</font></strong></div></td>
              </tr>
            </table></td>
        </tr>
        <% end if%>
        <% end if %>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><div align="center"> 
              <%if show <> "" then%>
              <input name="send" type="button" id="send" value="�觤Ӣ��Է����ҹ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
              <span style="background-color: #FFFFFF"></font></span> 
              <% end if%>
              &nbsp;&nbsp; <span style="background-color: #FFFFFF"> <font color="#4B0097"> 
              <input id="back" type="button" value="�Դ˹�ҵ�ҧ" name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunWindow('FullPage','login.asp');">
              </font></span> </div></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
  </center>
</div>
<div align="center"> 
  <center>
    <form name="form2" method="post" action="">
      <input name="show" type="hidden" value="1">
      <input name="empid" type="hidden" id="empid">
    </form>
  </center>
</div>
</body>
<script language="JavaScript">
function doloaddata() {
		top.FullPage.document.form2.empid.value=top.FullPage.document.form1.empid.value;
		document.body.style.cursor='wait';
		document.form2.submit();
} 
function dosend(){
	if(document.form1.req_tel.value==""){
			alert('��س��к��������Ѿ��');
			document.form1.req_tel.focus();
			return;
		}
		document.form1.send.disabled=true;
		top.RunWindow('Temp1','temp_save_request_level.asp');
}
</script>
</center>
</div>
</body>
</html>