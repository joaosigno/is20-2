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
	Response.End
	end if
%>
<%
	Dim show, i
	Dim cbus, cmcode, cgcode, showdate1, opendate1, showdate2, opendate2
	cbus = Request.Form("cbus")
	cmcode = Request.Form("cmcode")
	cgcode = Request.Form("cgcode")
	show = Request.Form("show")
	showdate1 = Request.Form("showdate1")
	opendate1= Request.Form("opendate1")
	showdate2 = Request.Form("showdate2")
	opendate2= Request.Form("opendate2")

    Dim Rs, Rs2, Rs3, SQL
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
    set Rs3 = Server.CreateObject("Adodb.RecordSet")
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">�����������</font></b></td>
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
                <td width="17%" valign="top"> <b><font size="2" color="#4B0097">���͡���͹䢡���ʴ�������</font></b></td>
                <td width="73%"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="550" height="44">
                    <tr> 
                      <td valign="bottom" width="100"><div align="right"><font size="2" color="#4B0097">������١��Ҹ�áԨͧ���</font></div></td>
                      <td width="10" valign="bottom" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                      <td width="440" valign="bottom"><select name="cbus" id="cbus" onkeypress="if(window.event.keyCode==13){document.form1.cmcode.focus();}" onChange="donewload();">
                          <option value="">��س��кء�����١��Ҹ�áԨͧ���</option>
                          <% 
					  SQL = "SELECT  * FROM  BUSINESS_TYPE"
					  Rs.Open SQL,Session("Conn1"),1,3
								do while not Rs.EOF
						%>
                          <option value="<%=Rs("CBUS") %>"  <%if cbus=Rs("CBUS") then%>selected<%end if%>><%=Rs("CBUS")& Response.Write(" ")&Rs("NBUS")%></option>
                          <%
								Rs.MoveNext
								loop
								Rs.Close
						%>
                        </select> </td>
                    </tr>
                    <tr> 
                      <td valign="bottom"><div align="right"><font size="2" color="#4B0097">�١���</font></div></td>
                      <td valign="bottom"><select name="cmcode" id="cmcode" onkeypress="if(window.event.keyCode==13){document.form1.cgcode.focus();}" onchange="donewload();">
                          <option value="">��س��к��١���</option>
                          <%
	if cbus<>"" then
		SQL = "SELECT CM_CODE, CM_NAME	FROM COMP_MAIN	WHERE (CBUS = N'" & cbus & "') "
		Rs.Open SQL,Session("Conn1"),1,3
	
		do while not Rs.EOF
%>
                          <option value="<%=Rs("cm_code")%>" <%if Rs("CM_CODE")=cmcode then%>selected<%end if%>><%=Rs("cm_code")&" - "&Rs("cm_name")%></option>
                          <%
			Rs.MoveNext
		loop
		Rs.Close
	end if
%>
                        </select> </td>
                    </tr>
                    <tr> 
                      <td valign="bottom"><div align="right"><font color="#4B0097" size="2">�Ң�</font></div></td>
                      <td valign="bottom"> <div align="left"> 
                          <select name="cgcode" id="cgcode" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
                            <option value="">��س��к��Ң�</option>
                            <%
	if cmcode<>"" then
		Sql = "SELECT CG_CODE, CG_NAME FROM CUST_GROUP WHERE (CM_CODE = N'" & cmcode & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	
		do while not Rs2.EOF
%>
                            <option value="<%=Rs2("cg_code")%>" <%if Rs2("cg_code")=cgcode then%>selected<%end if%>><%=Rs2("cg_code")&" - "&Rs2("cg_name")%></option>
                            <%
			Rs2.MoveNext
		loop
		Rs2.Close
	end if
%>
                          </select>
                          &nbsp;&nbsp; 
                          <input name="send" type="button" id="send" value="�ʴ�������" onClick="doloaddata();" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'">
                        </div></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
<%if show=1 then%>
        <tr> 
          <td>
<%if cgcode="" then%>
<%
	Sql = "SELECT CM_NAME FROM COMP_MAIN GROUP BY CM_NAME, CM_CODE HAVING (CM_CODE = N'" & cmcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
%>
		  <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td width="29%"><p align="right"><b><font size="2" color="#4B0097">�����١���</font></b></td>
                <td width="2%"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="74%"><b><font color="#4B0097" size="2"><%=Rs("CM_NAME")%></font></b></td>
              </tr>
            </table>
            <%else%>
<%
	Sql = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
	Rs.Open Sql,Session("Conn1"),1,3
%>
            <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td width="29%"><p align="right"><b><font size="2" color="#4B0097">�����١���</font></b></td>
                <td width="2%" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="74%"><strong><font  color="#4b0097" size="2"><%=Rs("CM_NAME")&"  "&Rs("CG_NAME")%></font></strong></td>
              </tr>
              <tr> 
                <td><p align="right"><font size="2" color="#4B0097">��������١���</font></td>
                <td><font  color="#4b0097" size="2"><%=Rs("CGADDR_SNAME")&" "&Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
              </tr>
              <tr> 
                <td><p align="right"><font color="#4b0097" size="2">�Ҥ��áԨ</font></td>
                <td><font  size="2" color="#4B0097"> 
                  <% =Rs("Area")%>
                  </font></td>
              </tr>
              <tr> 
                <td><p align="right"><font color="#4b0097" size="2">�ѧ��Ѵ</font></td>
                <td><font  size="2" color="#4B0097"><%=Rs("PROVINCE")%></font></td>
              </tr>
              <tr> 
                <td><p align="right"><font size="2" color="#4B0097">������١���</font></td>
                <td><font  color="#4B0097" size="2"> 
                  <%
							Response.Write(Rs("SMT"))
						%>
                  </font></td>
              </tr>
            </table>
<%end if%>
	<%Rs.Close%>
			</td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%">&nbsp;</td>
                <td width="65%"><font size="2">��ҿ <img src="../images/PRINT3.ICO" style="cursor:hand" onclick=""></font></td>
                <td width="25%">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td height="21"><p align="center"><font size="3" color="#4B0097"><b>�������ʴ�������º��º�����&nbsp;�� 
<%if Year(Date())<Session("Year_Thai") then%>
                    <%=Year(Date())+542%> - <%=Year(Date())+543%>
<%else%>
                    <%=Year(Date())-1%> - <%=Year(Date())%>
<%end if%>
					</b></font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="500" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="20%" rowspan="2"><div align="center"><font size="2" color="#4B0097"><b>��͹</b></font></div></td>
                <td colspan="2"><div align="center"><font size="2" color="#4B0097"><b>�����</b></font></div></td>
                <td width="30%" rowspan="2"><div align="center"><font size="2" color="#4B0097"><b>��ǹ��ҧ�ͧ�����<br>
                    </b>(�Դ�������繵�)</font></div></td>
              </tr>
<%
	Dim tmpyear
%>
              <tr> 
                    <%if Year(Date())<Session("Year_Thai") then%>
                    <%tmpyear =Year(Date())+542%> 
                    <%else%>
                    <%tmpyear =Year(Date())-1%> 
                    <%end if%>
                <td width="25%" style="cursor:hand" onMouseOver="document.all.f1.color='#ff0000';" onMouseOut="document.all.f1.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','inc_year.asp?year=<%=tmpyear%>&cmcode=<%=cmcode%>&cgcode=<%=cgcode%>');"><div align="center"><font name="f1" id="f1" size="2" color="#4B0097" style="text-decoration: 'underline'"><b>�� <%=tmpyear%></b></font></div></td>
                    <%tmpyear =tmpyear+1%> 
                <td width="25%" style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000';" onMouseOut="document.all.f2.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','inc_year.asp?year=<%=tmpyear%>&cmcode=<%=cmcode%>&cgcode=<%=cgcode%>');"><div align="center"><font name="f2" id="f2" size="2" color="#4B0097" style="text-decoration: 'underline'"><b>�� <%=tmpyear%></b></font></div></td>
              </tr>
              <%
	Dim total1, total2, num1, num2
	total1=0
	total2=0
%>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>���Ҥ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
                    <%
	if cgcode="" then
		Sql = "SELECT TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT, BILLING_MONTH FROM VIEWDETAILBILL WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-544 & "') GROUP BY BILLING_MONTH, CG_CODE HAVING (CG_CODE <> N'" & cmcode & "01001') ORDER BY BILLING_MONTH "
	else
		Sql = "SELECT TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT, BILLING_MONTH FROM VIEWDETAILBILL GROUP BY CG_CODE, BILLING_YEAR, BILLING_MONTH HAVING (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-544 & "') ORDER BY BILLING_MONTH "
	end if
	response.Write(Sql)
	response.End() 
	Rs.Open Sql, Session("Conn1"),1,3
	
%>
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"01" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
                    <%
	if cgcode="" then
		Sql = "SELECT TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT, BILLING_MONTH FROM VIEWDETAILBILL WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') GROUP BY BILLING_MONTH, CG_CODE HAVING (CG_CODE <> N'" & cmcode & "01001') ORDER BY BILLING_MONTH "
	else
		Sql = "SELECT TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT, BILLING_MONTH FROM VIEWDETAILBILL GROUP BY CG_CODE, BILLING_YEAR, BILLING_MONTH HAVING (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY BILLING_MONTH "
	end if
	Rs2.Open Sql, Session("Conn1"),1,3
%>
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"01" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>����Ҿѹ��</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"02" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"02" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>�չҤ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"03" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"03" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>����¹</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"04" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"04" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>����Ҥ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"05" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"05" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>�Զع�¹</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"06" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"06" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>�á�Ҥ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"07" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"07" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>�ԧ�Ҥ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"08" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"08" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>�ѹ��¹</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"09" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"09" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>���Ҥ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"10" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"10" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>��Ȩԡ�¹</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"11" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"11" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>�ѹ�Ҥ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num1=0
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-544&"12" then
				Response.Write(formatNumber(Rs("MNT_HT_FACT"),2))
				num1 = CDbl(Rs("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs("MNT_HT_FACT"))
				Rs.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if not Rs2.EOF and not Rs2.BOF then
		if not IsNull(Rs2("BILLING_MONTH")) then
			if Rs("BILLING_MONTH")= tmpyear-543&"12" then
				Response.Write(formatNumber(Rs2("MNT_HT_FACT"),2))
				num2 = CDbl(Rs2("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs2("MNT_HT_FACT"))
			end if
		end if
	end if
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>����������ͻ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"><%=formatnumber(total1,2)%></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"><%=formatnumber(total2,2)%></font></div></td>
                <td><div align="center"><font size="2" color="#<%if total1>total2 then%>FF0000<%else%>4B0097<%end if%>"><b> 
                    <%if total1>total2 then%>
                    - 
                    <%end if%>
                    <%=formatpercent(abs(total1-total2)/total1)%></b></font></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>���������µ�ͻ�</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"><%=formatnumber(total1/12,2)%></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"><%=formatnumber(total2/12,2)%></font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if total1/12>total2/12 then%>FF0000<%else%>4B0097<%end if%>"> 
                    <%if total1/12>total2/12 then%>
                    - 
                    <%end if%>
                    <%=formatpercent(abs((total1/12)-(total2/12))/(total1/12))%></font></strong></div></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
<%end if%>
      </table>
    </form>
    <form name="form2" method="post" action="income.asp">
      <input name="cbus" type="hidden" id="cbus">
      <input name="cmcode" type="hidden" id="cmcode">
      <input name="cgcode" type="hidden" id="cgcode">
    </form>
    <form name="form3" method="post" action="income.asp">
      <input name="cbus" type="hidden" id="cbus">
      <input name="cmcode" type="hidden" id="cmcode">
      <input name="cgcode" type="hidden" id="cgcode">
      <input name="show" type="hidden" id="show" value="1">
    </form>
  </center>
</div>
<script language="JavaScript">
	function donewload(){
		document.form2.cbus.value=document.form1.cbus.value;
		document.form2.cmcode.value=document.form1.cmcode.value;
		document.form2.cgcode.value=document.form1.cgcode.value;
		document.body.style.cursor='wait';
		document.form2.submit();
	}

	function doloaddata(){
		if(document.form1.cbus.value==""){
			alert('��س��С�������١��Ҹ�áԨͧ���');
			document.form1.cbus.focus();
			return;
		}
		if(document.form1.cmcode.value==""){
			alert('��س��к��١���');
			document.form1.cmcode.focus();
			return;
		}

		document.form3.cbus.value=document.form1.cbus.value;
		document.form3.cmcode.value=document.form1.cmcode.value;
		document.form3.cgcode.value=document.form1.cgcode.value;
		document.body.style.cursor='wait';
		document.form3.submit();
	}
</script>
  </body>
</html>