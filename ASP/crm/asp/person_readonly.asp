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
<body bgcolor="#E8F8FF" onLoad="document.form1.counttotal.focus();">
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
	Dim Rs, Rs2, Rs3, Rs4, Rs5, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")		
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	set Rs3 = Server.CreateObject("Adodb.RecordSet")
	set Rs4 = Server.CreateObject("Adodb.RecordSet")
	set Rs5 = Server.CreateObject("Adodb.RecordSet")
	
	Dim empid
	empid = Request.QueryString("empid")

	Sql = "SELECT EMP_FAMILY.* FROM EMP_FAMILY WHERE EMPID=" & empid & " "
	Rs2.Open Sql, Session("Conn1"),1,3

	Sql = "SELECT EMP_EASY.* FROM EMP_EASY WHERE EMPID=" & empid & " "
	Rs3.Open Sql, Session("Conn1"),1,3

	Sql = "SELECT EMP_COMMU_TTT.* FROM EMP_COMMU_TTT WHERE EMPID=" & empid & " "
	Rs4.Open Sql, Session("Conn1"),1,3

	Sql = "SELECT EMP_COMPANY.* FROM EMP_COMPANY WHERE EMPID=" & empid & " "
	Rs5.Open Sql, Session("Conn1"),1,3
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">��������ǹ�ؤ��</font></b></td>
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
          <td><div align="center"> 
              <table width="90%" border="0" align="center" cellPadding="0" cellSpacing="0">
                <tr> 
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#ada2eb"> 
                        <td colspan="5"><b><font color="white" size="2">��������´��ͺ����</font></b></td>
                      </tr>
                      <tr> 
                        <td width="20%"><font  size="2">�ӹǹ��Ҫԡ㹤�ͺ����</font></td>
                        <td width="20%"><font size="2">������ 
                          <input name="counttotal" type="text" class="text" id="counttotal" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUMTOTAL")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.male.focus();}" onFocus="if(document.form1.counttotal.value=='0'){document.form1.counttotal.value='';}" onBlur="if(document.form1.counttotal.value==''){document.form1.counttotal.value='0';}">
                          ��</font></td>
                        <td width="20%"><font size="2">�繪�� 
                          <input name="male" type="text" class="text" id="male" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUMMALE")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.female.focus();}" onFocus="if(document.form1.male.value=='0'){document.form1.male.value='';}" onBlur="if(document.form1.male.value==''){document.form1.male.value='0';}">
                          ��</font></td>
                        <td width="20%"><font size="2">��˭ԧ 
                          <input name="female" type="text" class="text" id="female" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUMFEMALE")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.A14.focus();}" onFocus="if(document.form1.female.value=='0'){document.form1.female.value='';}" onBlur="if(document.form1.female.value==''){document.form1.female.value='0';}">
                          ��</font></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr> 
                        <td><font size="2">���آͧ��Ҫԡ㹤�ͺ����</font></td>
                        <td><font size="2">��ӡ��� 14 �� 
                          <input name="A14" type="text" class="text" id="A14" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUM14")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.A19.focus();}" onFocus="if(document.form1.A14.value=='0'){document.form1.A14.value='';}" onBlur="if(document.form1.A14.value==''){document.form1.A14.value='0';}">
                          �� </font></td>
                        <td><font size="2">15 - 19 �� 
                          <input name="A19" type="text" class="text" id="A19" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUM19")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.A24.focus();}" onFocus="if(document.form1.A19.value=='0'){document.form1.A19.value='';}" onBlur="if(document.form1.A19.value==''){document.form1.A19.value='0';}">
                          �� </font></td>
                        <td><font size="2">20 - 24 �� 
                          <input name="A24" type="text" class="text" id="A24" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUM24")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.A29.focus();}" onFocus="if(document.form1.A24.value=='0'){document.form1.A24.value='';}" onBlur="if(document.form1.A24.value==''){document.form1.A24.value='0';}">
                          �� </font></td>
                        <td><font size="2">25 - 29 �� 
                          <input name="A29" type="text" class="text" id="A29" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUM29")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.A39.focus();}" onFocus="if(document.form1.A29.value=='0'){document.form1.A29.value='';}" onBlur="if(document.form1.A29.value==''){document.form1.A29.value='0';}">
                          �� </font></td>
                      </tr>
                      <tr> 
                        <td>&nbsp;</td>
                        <td><font size="2">30 - 39 �� 
                          <input name="A39" type="text" class="text" id="A39" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUM39")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.A49.focus();}" onFocus="if(document.form1.A39.value=='0'){document.form1.A39.value='';}" onBlur="if(document.form1.A39.value==''){document.form1.A39.value='0';}">
                          ��</font></td>
                        <td><font size="2">40</font><font size="2"> - 49 �� 
                          <input name="A49" type="text" class="text" id="A49" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUM49")%><%else%>0<%end if%>" onKeyPress="if(window.event.keyCode==13){document.form1.A50.focus();}" onFocus="if(document.form1.A49.value=='0'){document.form1.A49.value='';}" onBlur="if(document.form1.A49.value==''){document.form1.A49.value='0';}">
                          ��</font></td>
                        <td><font size="2">50</font><font size="2">�� ���� 
                          <input name="A50" type="text" class="text" id="A50" size="3" maxlength="2" value="<%if not Rs2.EOF then%><%=Rs2("NUM50")%><%else%>0<%end if%>" onFocus="if(document.form1.A50.value=='0'){document.form1.A50.value='';}" onBlur="if(document.form1.A50.value==''){document.form1.A50.value='0';}">
                          ��</font></td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr> 
                        <td><font size="2">������»���ҳ��ͤ�ͺ����</font></td>
                        <td><font size="2"> 
                          <input type="radio" name="S" value="1" <%if not Rs2.EOF then%><%if Cint(Rs2("SALARYALL"))=Cint(1) then%>checked<%end if%><%end if%>>
                          ��ӡ��� 10,000 �ҷ</font></td>
                        <td><font size="2"> 
                          <input type="radio" name="S" value="2" <%if not Rs2.EOF then%><%if Cint(Rs2("SALARYALL"))=Cint(2) then%>checked<%end if%><%end if%>>
                          10,001-20,000 �ҷ</font></td>
                        <td><font size="2"> 
                          <input type="radio" name="S" value="3" <%if not Rs2.EOF then%><%if Cint(Rs2("SALARYALL"))=Cint(3) then%>checked<%end if%><%end if%>>
                          20,001-30,000 �ҷ</font></td>
                        <td><font size="2"> 
                          <input type="radio" name="S" value="4" <%if not Rs2.EOF then%><%if Cint(Rs2("SALARYALL"))=Cint(4) then%>checked<%end if%><%end if%>>
                          30,000 �ҷ����</font></td>
                      </tr>
                      <tr> 
                        <td><font size="2">���˹�Ҥ�ͺ���ǻ�Сͺ�Ҫվ</font></td>
                        <td><font  size="1"> 
                          <select name="job" id="job">
                            <option value="0">����к�</option>
<%
	Sql = "SELECT TOP 100 PERCENT JOBID, JOBNAME FROM EMP_JOB WHERE (JOBID <> 0) ORDER BY JOBNAME "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                            <option value="<%=Rs("JOBID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("JOBID"))=Cint(Rs("JOBID")) then%>selected<%end if%><%end if%>><%=Rs("JOBNAME")%></option>
<%
		Rs.MoveNext
	loop
	Rs.Close
%>
                          </select>
                          </font></td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                    </table></td>
                </tr>
                <tr> 
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#ada2eb"> 
                        <td colspan="4"><strong><font color="#FFFFFF"  size="2">����ѷ�ä��Ҥ�������ԡ��</font></strong></td>
                      </tr>
<%
	Sql = "SELECT COMPID, COMPNAME FROM COMPANY "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                      <tr> 
					  	<%if not Rs.EOF then%>
                        <td width="25%"><font size="2"><input type="checkbox" name="comsevice" value="<%=Rs("COMPID")%>" <%if not Rs5.EOF then%><%if Cint(Rs5("COMPID"))=Cint(Rs("COMPID")) then%><%Rs5.MoveNext%>checked<%end if%><%end if%>><%=Rs("COMPNAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="checkbox" name="comsevice" value="<%=Rs("COMPID")%>" <%if not Rs5.EOF then%><%if Cint(Rs5("COMPID"))=Cint(Rs("COMPID")) then%><%Rs5.MoveNext%>checked<%end if%><%end if%>><%=Rs("COMPNAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="checkbox" name="comsevice" value="<%=Rs("COMPID")%>" <%if not Rs5.EOF then%><%if Cint(Rs5("COMPID"))=Cint(Rs("COMPID")) then%><%Rs5.MoveNext%>checked<%end if%><%end if%>><%=Rs("COMPNAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="checkbox" name="comsevice" value="<%=Rs("COMPID")%>" <%if not Rs5.EOF then%><%if Cint(Rs5("COMPID"))=Cint(Rs("COMPID")) then%><%Rs5.MoveNext%>checked<%end if%><%end if%>><%=Rs("COMPNAME")%></font></td>
						<%
								Rs.MoveNext
							end if
						%>
                      </tr>
<%
	loop
	Rs.Close
%>
                    </table></td>
                </tr>
                <tr> 
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#ada2eb"> 
                        <td colspan="4"><font  color="#ffffff" size="2"><b>�Ըա�è��¤�����Ѿ��</b></font></td>
                      </tr>
<%
	Sql = "SELECT PAYID, PAYNAME FROM PAY "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                      <tr> 
					  	<%if not Rs.EOF then%>
                        <td width="25%"><font size="2"><input type="radio" name="paymethod" value="<%=Rs("PAYID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("PAYID"))=Cint(Rs("PAYID")) then%>checked<%end if%><%end if%>><%=Rs("PAYNAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="radio" name="paymethod" value="<%=Rs("PAYID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("PAYID"))=Cint(Rs("PAYID")) then%>checked<%end if%><%end if%>><%=Rs("PAYNAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="radio" name="paymethod" value="<%=Rs("PAYID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("PAYID"))=Cint(Rs("PAYID")) then%>checked<%end if%><%end if%>><%=Rs("PAYNAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="radio" name="paymethod" value="<%=Rs("PAYID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("PAYID"))=Cint(Rs("PAYID")) then%>checked<%end if%><%end if%>><%=Rs("PAYNAME")%></font></td>
						<%
								Rs.MoveNext
							end if
						%>
                      </tr>
<%
	loop
	Rs.Close
%>
                    </table></td>
                </tr>
                <tr> 
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#ada2eb"> 
                        <td colspan="4"><strong><font  color="#ffffff" size="1"><b><font size="2">�Ըշ���дǡ㹡�õԴ���</font></b></font></strong></td>
                      </tr>
<%
	Dim i
	i=0
	
	Sql = "SELECT TOP 100 PERCENT ECID, ECNAME FROM EASY_CONNECT "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                      <tr> 
					  	<%if not Rs.EOF then%>
                        <td width="15%"><font size="2"><input type="checkbox" name="easycon" value="<%=Rs("ECID")%>" onClick="if(document.form1.easycon(<%=i%>).checked==true){document.form1.remark(<%=i%>).disabled=false;}else{document.form1.remark(<%=i%>).value=''; document.form1.remark(<%=i%>).disabled=true;}" <%if not Rs3.EOF then%><%if Cint(Rs3("ECID"))=Cint(Rs("ECID")) then%>checked<%end if%><%end if%>><%=Rs("ECNAME")%></font></td>
                        <td width="35%"><font size="2"><input name="remark" type="text" class="text" size="40" maxlength="100" <%if not Rs3.EOF then%><%if Cint(Rs3("ECID"))=Cint(Rs("ECID")) then%>value="<%=Rs3("REMARK")%>"<%Rs3.MoveNext%><%else%> disabled<%end if%><%end if%>></font></td>
						<%
								i=i+1
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="15%"><font size="2"><input type="checkbox" name="easycon" value="<%=Rs("ECID")%>" onChange="if(document.form1.easycon(<%=i%>).checked==true){document.form1.remark(<%=i%>).disabled=false;}else{document.form1.remark(<%=i%>).value=''; document.form1.remark(<%=i%>).disabled=true;}" <%if not Rs3.EOF then%><%if Cint(Rs3("ECID"))=Cint(Rs("ECID")) then%>checked<%end if%><%end if%>><%=Rs("ECNAME")%></font></td>
                        <td width="35%"><font size="2"><input name="remark" type="text" class="text" size="40" maxlength="100" <%if not Rs3.EOF then%><%if Cint(Rs3("ECID"))=Cint(Rs("ECID")) then%>value="<%=Rs3("REMARK")%>"<%Rs3.MoveNext%><%else%> disabled<%end if%><%end if%>></font></td>
						<%
								i=i+1
								Rs.MoveNext
							end if
						%>
                      </tr>
<%
	loop
	Rs.Close
%>
                    </table></td>
                </tr>
                <tr> 
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#ada2eb"> 
                        <td colspan="2"><b><font  color="#ffffff" size="2">�����ɳ�</font></b></td>
                      </tr>
                      <tr> 
                        <td width="35%"><font  size="2">�����ɳҷ���Ѻ��Һ��������ҡ����ش</font></td>
                        <td width="65%"> <select name="commu" id="commu">
                            <option value="0">����к�</option>
<%
	Sql = "SELECT COID, CONAME FROM COMMUNICATION "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                            <option value="<%=Rs("COID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("COID"))=Cint(Rs("COID")) then%>selected<%end if%><%end if%>><%=Rs("CONAME")%></option>
<%
		Rs.MoveNext
	loop
	Rs.Close
%>
                          </select> </td>
                      </tr>
                      <tr> 
                        <td><font  size="2">ʶҹ��÷�ȹ����ҹ�Դ�����·���ش</font></td>
                        <td> <select name="tv" id="tv">
                            <option value="0">����к�</option>
<%
	Sql = "SELECT TVID, TVNAME FROM TV "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                            <option value="<%=Rs("TVID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("TVID"))=Cint(Rs("TVID")) then%>selected<%end if%><%end if%>><%=Rs("TVNAME")%></option>
<%
		Rs.MoveNext
	loop
	Rs.Close
%>
                          </select> </td>
                      </tr>
                      <tr> 
                        <td><font  size="2">��¡���Է�ط��ѧ�繻�Ш�</font></td>
                        <td> 
                          <select name="radio" id="radio">
                            <option value="0">����к�</option>
<%
	Sql = "SELECT RAID, RANAME FROM RADIO "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                            <option value="<%=Rs("RAID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("RAID"))=Cint(Rs("RAID")) then%>selected<%end if%><%end if%>><%=Rs("RANAME")%></option>
<%
		Rs.MoveNext
	loop
	Rs.Close
%>
                          </select></td>
                      </tr>
                      <tr> 
                        <td><font  size="2">˹ѧ��;��������ҹ��Ш�</font></td>
                        <td> <select name="newspaper" id="newspaper">
                            <option value="0">����к�</option>
<%
	Sql = "SELECT NPID, NPNAME FROM NEWS_PAPER "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                            <option value="<%=Rs("NPID")%>" <%if not Rs2.EOF then%><%if Cint(Rs2("NPID"))=Cint(Rs("NPID")) then%>selected<%end if%><%end if%>><%=Rs("NPNAME")%></option>
<%
		Rs.MoveNext
	loop
	Rs.Close
%>
                          </select> </td>
                      </tr>
                    </table></td>
                </tr>
                <tr> 
                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr bgcolor="#ada2eb"> 
                        <td colspan="4"><strong><font  color="#ffffff" size="2"><b>�����ɳɢͧ 
                          TT&amp;T �������� / �ѧ</b></font></strong></td>
                      </tr>
<%
	Sql = "SELECT COID, CONAME FROM COMMUNICATION_TTT "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                      <tr> 
						<%
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="checkbox" name="commuttt" value="<%=Rs("COID")%>" <%if not Rs4.EOF then%><%if Cint(Rs4("COID"))=Cint(Rs("COID")) then%><%Rs4.MoveNext%>checked<%end if%><%end if%>><%=Rs("CONAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="checkbox" name="commuttt" value="<%=Rs("COID")%>" <%if not Rs4.EOF then%><%if Cint(Rs4("COID"))=Cint(Rs("COID")) then%><%Rs4.MoveNext%>checked<%end if%><%end if%>><%=Rs("CONAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="checkbox" name="commuttt" value="<%=Rs("COID")%>" <%if not Rs4.EOF then%><%if Cint(Rs4("COID"))=Cint(Rs("COID")) then%><%Rs4.MoveNext%>checked<%end if%><%end if%>><%=Rs("CONAME")%></font></td>
						<%
								Rs.MoveNext
							end if
							if not Rs.EOF then
						%>
                        <td width="25%"><font size="2"><input type="checkbox" name="commuttt" value="<%=Rs("COID")%>" <%if not Rs4.EOF then%><%if Cint(Rs4("COID"))=Cint(Rs("COID")) then%><%Rs4.MoveNext%>checked<%end if%><%end if%>><%=Rs("CONAME")%></font></td>
						<%
								Rs.MoveNext
							end if
						%>
                      </tr>
<%
	loop
	Rs.Close
%>
                    </table></td>
                </tr>
                <tr> 
                  <td><div align="center"><font size="2">���觷���Ңͧ������ 
                      <select name="data" id="data">
                        <option value="">�к����觢�����</option>
<%
	Sql = "SELECT DIID, DINAME FROM DATAINPUT "
	Rs.Open Sql, Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                        <option value="<%=Rs("DIID")%>"  <%if not Rs2.EOF then%><%if Cint(Rs2("DIID"))=Cint(Rs("DIID")) then%>selected<%end if%><%end if%>><%=Rs("DINAME")%></option>
<%
		Rs.MoveNext
	loop
	Rs.Close
%>
                      </select>
                      <input type="hidden" name="empid" value="<%=empid%>">
                      </font></div></td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td> <div align="center"> 
                      <input id="back2" type="button" value=" ��Ѻ˹����� " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop4');">
                    </div></td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                </tr>
              </table>
            </div></td>
        </tr>
      </table>
    </form>
    </center>
</div>
<script language="JavaScript">
//alert(parseInt(document.form1.counttotal.value));
function dosend(){
	if(isFinite(document.form1.counttotal.value)==false || document.form1.counttotal.value==0){
		alert('�кبӹǹ��Ҫԡ㹤�ͺ�������١��ͧ');
		document.form1.counttotal.focus();
		return;
	}
	if(isFinite(document.form1.male.value)==false){
		alert('�кبӹǹ�����㹤�ͺ�������١��ͧ');
		document.form1.male.focus();
		return;
	}
	if(isFinite(document.form1.female.value)==false){
		alert('�кبӹǹ���˭ԧ㹤�ͺ�������١��ͧ');
		document.form1.female.focus();
		return;
	}
	if(isFinite(document.form1.A14.value)==false){
		alert('�кبӹǹ���ص�ӡ��� 14 ���١��ͧ');
		document.form1.A14.focus();
		return;
	}
	if(isFinite(document.form1.A19.value)==false){
		alert('�кبӹǹ���� 15 - 19 ���١��ͧ');
		document.form1.A19.focus();
		return;
	}
	if(isFinite(document.form1.A24.value)==false){
		alert('�кبӹǹ���� 20 - 24 ���١��ͧ');
		document.form1.A24.focus();
		return;
	}
	if(isFinite(document.form1.A29.value)==false){
		alert('�кبӹǹ���� 25 - 29 ���١��ͧ');
		document.form1.A29.focus();
		return;
	}
	if(isFinite(document.form1.A39.value)==false){
		alert('�кبӹǹ���� 30 - 39 ���١��ͧ');
		document.form1.A39.focus();
		return;
	}
	if(isFinite(document.form1.A49.value)==false){
		alert('�кبӹǹ���� 40 - 49 ���١��ͧ');
		document.form1.A49.focus();
		return;
	}
	if(isFinite(document.form1.A50.value)==false){
		alert('�кبӹǹ����  50 �������١��ͧ');
		document.form1.A50.focus();
		return;
	}
	if(parseInt(document.form1.counttotal.value)!=parseInt(document.form1.male.value)+parseInt(document.form1.female.value)){
		alert('�кبӹǹ��Ҫԡ㹤�ͺ�������١��ͧ');
		return;
	}
	if(parseInt(document.form1.counttotal.value)!=parseInt(document.form1.A14.value)+parseInt(document.form1.A19.value)+parseInt(document.form1.A24.value)+parseInt(document.form1.A29.value)+parseInt(document.form1.A39.value)+parseInt(document.form1.A49.value)+parseInt(document.form1.A50.value)){
		if(parseInt(document.form1.counttotal.value)>parseInt(document.form1.A14.value)+parseInt(document.form1.A19.value)+parseInt(document.form1.A24.value)+parseInt(document.form1.A29.value)+parseInt(document.form1.A39.value)+parseInt(document.form1.A49.value)+parseInt(document.form1.A50.value)){
			alert('�к����آͧ��Ҫԡ㹤�ͺ�������ú');
		}else{
			alert('�к����آͧ��Ҫԡ㹤�ͺ�����Թ');
		}
		return;
	}
	for(i=0; i<document.form1.easycon.length; i++){
		if(document.form1.easycon[i].checked){
			if(document.form1.remark[i].value==""){
				alert('��س��кؤ�͸Ժ���ԸյԴ���');
				document.form1.remark[i].focus();
				return;
			}
		}
	}
	if(document.form1.data.value==""){
		alert('�к����觷����');
		document.form1.data.focus();
		return;
	}

	top.RunWindow('Temp1','temp_save_person_add.asp');
}
</script>
</body>
</html>