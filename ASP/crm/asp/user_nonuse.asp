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
<body bgcolor="#E8F8FF" onLoad="document.form1.empid.focus();">
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
				Dim day1, month1, year1
				Function format_date(chdate)
					if Day(chdate) < 10 then day1= 0&Day(chdate) else day1 = Day(chdate) end if	
					if Month(chdate) < 10 then month1= 0&Month(chdate)  else month1 = Month(chdate) end if
					year1 = Year(chdate)	
					format_date = day1&"/"&month1&"/"&year1
				End Function
	%>
<%
 	Dim lastdate, Rs, SQL,area, show, empid, empname
	Set Rs = Server.CreateObject("Adodb.RecordSet")
	area = Request.Form("area")
	empid = Request.Form("empid")
	empname = Request.Form("empname")
	show = Request.Form("show")
	lastdate = format_date(Now-31)
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">Account 
                  Name �������ա����ҹ�ҹ���� 30 �ѹ</font></b></td>
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
                <td width="12%">&nbsp;</td>
                <td width="20%" valign="top"> <b><font size="2" color="#4B0097">���͡���͹䢡���ʴ�������</font></b></td>
                <td width="68"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="380">
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2">���ʾ�ѡ�ҹ</font></div></td>
                      <td>&nbsp;</td>
                      <td><input name="empid" type="text" class="text" id="empid" onKeyPress="if(window.event.keyCode==13){document.form1.empname.focus();}" value="<%=empid%>" size="5" maxlength="4"></td>
                    </tr>
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2">�������͹��ʡ��</font></div></td>
                      <td>&nbsp;</td>
                      <td><input name="empname" type="text" class="text" id="empname"  onKeyPress="if(window.event.keyCode==13){document.form1.area.focus();}" value="<%=empname%>" size="30" maxlength="30"></td>
                    </tr>
                    <tr> 
                      <td width="100"><div align="right"><font size="2" color="#4B0097">�Ҥ��áԨ</font></div></td>
                      <td width="9"><img src="../images/blank.gif" width="1" height="1"></td>
                      <td width="280"> <select name="area" id="area" onKeyPress="if(window.event.keyCode==13){document.form1.send.focus();}">
                          <option value="-1">������</option>
                          <option value="0" <%if Cint(area)=Cint(0) and area<>"" then%>selected<%end if%>>0</option>
                          <option value="1" <%if Cint(area)=Cint(1) then%>selected<%end if%>>1</option>
                          <option value="2" <%if Cint(area)=Cint(2) then%>selected<%end if%>>2</option>
                          <option value="3" <%if Cint(area)=Cint(3) then%>selected<%end if%>>3</option>
                          <option value="4" <%if Cint(area)=Cint(4) then%>selected<%end if%>>4</option>
                          <option value="5" <%if Cint(area)=Cint(5) then%>selected<%end if%>>5</option>
                          <option value="6" <%if Cint(area)=Cint(6) then%>selected<%end if%>>6</option>
                          <option value="7" <%if Cint(area)=Cint(7) then%>selected<%end if%>>7</option>
                          <option value="8" <%if Cint(area)=Cint(8) then%>selected<%end if%>>8</option>
                          <option value="9" <%if Cint(area)=Cint(9) then%>selected<%end if%>>9</option>
                        </select> &nbsp;&nbsp; <input name="send" type="button" id="send" value="�ʴ�������" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="doloaddata();"> 
                      </td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <%
			Dim i, total, totalpage, pagesize, pageno, beginrow, endrow
			pageno=Request.Form("pageno")
			SQL = "SELECT EMP_LEVEL.EL_TEL, EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, PROVINCE.AREA, PROVINCE.PROVINCE, STATUS_USER.SU_BEGINDATE, STATUS_USER.SU_END_DATE FROM PROVINCE INNER JOIN EMPLOYEE ON PROVINCE.P_LOC = EMPLOYEE.WORKING_PROVINCE INNER JOIN STATUS_USER ON EMPLOYEE.EMP_ID = STATUS_USER.EL_EMPID INNER JOIN EMP_LEVEL ON EMPLOYEE.EMP_ID = EMP_LEVEL.EL_EMPID WHERE (STATUS_USER.SU_END_DATE < CONVERT(DATETIME, '" & right(lastdate,4) & "-" & mid(lastdate,4,2) & "-"  & left(lastdate,2) & " 00:00:00', 102))"
			if Cint(area) <> Cint(-1) then
				SQL = SQL & "AND (PROVINCE.AREA = '" & area & "') "
			end if
			if empid <> "" then
					Sql = Sql & " AND (EMP_LEVEL.EL_EMPID = '" & empid & "') "
			end if
			if empname <> "" then
					Sql = Sql & " AND ((EMPLOYEE.NAME_THAI like '" & empname & "%') OR (EMPLOYEE.SURNAME_THAI like '" & empname & "%')) "
			end if
				SQL = SQL & "ORDER BY PROVINCE.AREA, PROVINCE.PROVINCE_ID, EMPLOYEE.EMP_ID "
    		Rs.Open SQL,Session("Conn1"),1,3
			total = Rs.RecordCount
			pagesize=20
	%>
        <!--#include file = "finepage.asp"-->
        <%
	if show <> "" then
	%>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%">&nbsp;</td>
                <td width="65%">&nbsp;</td>
                <td width="25%"><select name="pageno" id="pageno" onChange="doloaddata2();">
                    <%
	for i=1 to totalpage
%>
                    <option value="<%=i%>" <%if Cint(pageno)=Cint(i) then%>selected<%end if%>>˹�ҷ�� 
                    <%=i%></option>
                    <%
	next
%>
                  </select></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="1" colspan="19" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="5%"><div align="center"><font color="#4B0097"><strong><font size="2">����</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="20%"><div align="center"><font color="#4B0097"><strong><font size="2">����-ʡ��</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="4%"><div align="center"><font color="#4B0097"><strong><font size="2">�Ҥ</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="12%"><div align="center"><font color="#4B0097"><strong><font size="2">�ѧ��Ѵ</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="14%"><div align="center"><font color="#4B0097"><strong><font size="2">�Դ�������к�</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="5%"><div align="center"><font color="#4B0097"><strong><font size="2">����</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="14%"><div align="center"><font color="#4B0097"><strong><font size="2">����к�����ش</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="5%"><div align="center"><font color="#4B0097"><strong><font size="2">����</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="21%"><div align="center"><font color="#4B0097"><strong><font size="2">����Դ���</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <% 
				if not Rs.EOF and not Rs.BOF then
				Rs.Move pagesize*(pageno-1)
				for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
 			%>
              <tr> 
                <td height="1" colspan="19" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=Rs("EMP_ID")%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4B0097" size="2"><%=Rs("TITLE_THAI")&Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=Rs("AREA")%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=Rs("PROVINCE")%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("SU_BEGINDATE"),1),len(FormatDateTime(Rs("SU_BEGINDATE"),1))-4)&right(FormatDateTime(Rs("SU_BEGINDATE"),1),4)+543%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("SU_BEGINDATE"),3),len(FormatDateTime(Rs("SU_BEGINDATE"),3))-3)%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("SU_END_DATE"),1),len(FormatDateTime(Rs("SU_END_DATE"),1))-4)&right(FormatDateTime(Rs("SU_END_DATE"),1),4)+543%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("SU_END_DATE"),3),len(FormatDateTime(Rs("SU_END_DATE"),3))-3)%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4B0097" size="2"><%=Rs("EL_TEL")%></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <% 
    Rs.MoveNext
	next
	Rs.MoveFirst
	end if
%>
              <tr> 
                <td height="1" colspan="19" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="12%">&nbsp;</td>
                <td><font color="#4B0097" size="2">������˹�һѨ�غѹ 
                  <%if not Rs.EOF and not Rs.BOF then%>
                  <%if Cint(pageno)=Cint(totalpage) then%>
                  <%=endrow%>
                  <%else%>
                  <%=pagesize%>
                  <%end if%>
                  <%else%>
                  0
                  <%end if%>
                  ��¡�� �ҡ�����ŷ����� <%=Rs.RecordCount%> ��¡�� ��й��������˹�� 
                  <%if not Rs.EOF and not Rs.BOF then%>
                  <%=pageno%>
                  <%else%>
                  0
                  <%end if%>
                  �ӹǹ�������� <%=totalpage%> ˹��</font></td>
              </tr>
            </table></td>
        </tr>
        <%
	end if
		%>
        <tr> 
          <td><div align="center"><span style="background-color: #FFFFFF"><font color="#4B0097"> 
              <input id="back" type="button" value=" ��Ѻ˹����� " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
              </font></span></div></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
</body>
<form name="form2" method="post" action="">
<input name="show" type="hidden" id="show" value="1">
<input name="empid" type="hidden" id="empid">
<input name="empname" type="hidden" id="empname">
<input name="area" type="hidden" id="area">
<input name="pageno" type="hidden" id="pageno">
</form>
<script language="JavaScript">
function doloaddata() {
		document.form2.empid.value=document.form1.empid.value;
		document.form2.empname.value=document.form1.empname.value;
		document.form2.area.value=document.form1.area.value;
		document.body.style.cursor='wait';
		document.form2.submit();
} 
function doloaddata2() {
		document.form2.empid.value=document.form1.empid.value;
		document.form2.empname.value=document.form1.empname.value;
		document.form2.area.value=document.form1.area.value;
		document.form2.pageno.value=document.form1.pageno.value;
		document.body.style.cursor='wait';
		document.form2.submit();
} 
</script>
</html>