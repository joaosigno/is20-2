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
	Dim tmpyear, cmcode, cgcode
	tmpyear = Request.QueryString("year")
	cmcode = Request.QueryString("cmcode")
	cgcode = Request.QueryString("cgcode")
	
	Dim Sql, Rs, Rs2, Rs3
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
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
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
<%
	Dim i, j, total, totalpage, pagesize, pageno, beginrow, endrow
	pageno=Request.Form("pageno")
	pagesize=20

	if cgcode="" then
		Sql = "SELECT DISTINCT TELNO, MC_CUSTOMER_ID AS CUSTOMER_D, NDOS FROM  VIEW_TELNO WHERE (CM_CODE = N'" & cmcode & "')"
			'Sql = "SELECT TOP 100 PERCENT TELNO FROM VIEWDETAILBILL WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') GROUP BY TELNO ORDER BY TELNO "
	else
		Sql = "SELECT DISTINCT TELNO,  MC_CUSTOMER_ID AS CUSTOMER_D, NDOS FROM  VIEW_TELNO WHERE (CG_CODE = N'" & cgcode & "')"
		'Sql = "SELECT TOP 100 PERCENT TELNO FROM VIEWDETAILBILL WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') GROUP BY TELNO ORDER BY TELNO "
	end if
	
	Rs.Open SQL,Session("Conn1"),1,3
	
	total = Rs.RecordCount
%>		
<!--#include file = "finepage.asp"-->
              <tr> 
                <td width="10%">&nbsp;</td>
                <td width="65%"><font size="2"><img src="../images/PRINT3.ICO" style="cursor:hand" onclick=""></font></td>
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
          <td><table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
              <tr> 
                <td width="100%"><div align="center"><font color="#4B0097"><strong>�������ʴ����������Ţ����&nbsp;�� <%=tmpyear%>
                    </strong></font></div></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="1" colspan="31" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="10%"><div align="center"><font color="#4B0097" size="1"><strong>�Ţ����</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>��.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>��.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>��.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>�.�.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="10%"><div align="center"><font color="#4B0097" size="1"><strong>�����</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="8%"><div align="center"><font color="#4B0097" size="1"><strong>����������</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="31" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <%
	Dim totala, total1, total2, total3, total4, total5, total6, total7, total8, total9, total10, total11, total12, totalt
	total=0
	total1=0
	total2=0
	total3=0
	total4=0
	total5=0
	total6=0
	total7=0
	total8=0
	total9=0
	total10=0
	total11=0
	total12=0
	totalt=0
	
	if not Rs.EOF and not Rs.BOF then
	Rs.Move pagesize*(pageno-1)
	for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
		totala=0
%>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font size="1"><font color="#4B0097"><%=Rs("TELNO")%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
                    <%
	if cgcode="" then
		dim amount(9)
		dim x
		for x = 1 to 9 
			amount(x) = 0
		next
		
	Sql = "SELECT   TOP 3  MNT_HT_FACT,1 as a  FROM  VIEW_BILL_NEW01 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2) union  SELECT     MNT_HT_FACT,2 as a  FROM    VIEW_BILL_NEW02 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2) union SELECT     MNT_HT_FACT,3 as a   FROM   VIEW_BILL_NEW03 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2)  order by a " 
	Rs3.Open Sql,Session("Conn1"),1,3
		for x = 1 to 3
				amount(x) = Rs3("MNT_HT_FACT")
				Rs3.movenext
		next
	Rs3.close
	Sql = "SELECT   TOP 3  MNT_HT_FACT,1 as a  FROM  VIEW_BILL_NEW04 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2) union  SELECT     MNT_HT_FACT,2 as a  FROM    VIEW_BILL_NEW05 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2) union SELECT     MNT_HT_FACT,3 as a   FROM   VIEW_BILL_NEW06 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2)  order by a " 
	Rs3.Open Sql,Session("Conn1"),1,3
	for x = 4 to 6
				amount(x) = Rs3("MNT_HT_FACT")
				Rs3.movenext
	next
	Rs3.close
	Sql = "SELECT   TOP 3  MNT_HT_FACT,1 as a  FROM  VIEW_BILL_NEW07 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2) union  SELECT     MNT_HT_FACT,2 as a  FROM    VIEW_BILL_NEW08 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2) union SELECT     MNT_HT_FACT,3 as a   FROM   VIEW_BILL_NEW09 WHERE     (BILLING_YEAR = '2004') AND (CUSTOMER_ID = 622744) AND (NDOS = 2)  order by a " 
	Rs3.Open Sql,Session("Conn1"),1,3
	for x = 7 to 9
				amount(x) = Rs3("MNT_HT_FACT")
				Rs3.movenext
	next
	Rs3.close
		'Sql = "SELECT MNT_HT_FACT, BILLING_MONTH FROM VIEWDETAILBILL WHERE (TELNO = '" & Rs("TELNO") & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') AND (CM_CODE = N'" & cmcode & "') GROUP BY MNT_HT_FACT, BILLING_MONTH ORDER BY BILLING_MONTH "
	else
		Sql = "SELECT MNT_HT_FACT, BILLING_MONTH FROM VIEWDETAILBILL WHERE (TELNO = '" & Rs("TELNO") & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') AND (CG_CODE = N'" & cgcode & "') ORDER BY BILLING_MONTH "
	end if
	
	'Rs3.Open Sql,Session("Conn1"),1,3
	for x = 1 to 9
	response.Write(amount(x))
	next
	response.End()
%>
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"01" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total1 = total1 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"02" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total2 = total2 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"03" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total3 = total3 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"04" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total4 = total4 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"05" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total5 = total5 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"06" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total6 = total6 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"07" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total7 = total7 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"08" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total8 = total8 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"09" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total9 = total9 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"10" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total10 = total10 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"11" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total11 = total11 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	if not Rs3.EOF and not Rs3.BOF then
		if not IsNull(Rs3("BILLING_MONTH")) then
			if Rs3("BILLING_MONTH")=tmpyear-543&"12" then
				Response.Write(formatNumber(Rs3("MNT_HT_FACT"),2))
				totala = totala + CDbl(Rs3("MNT_HT_FACT"))
				total12 = total12 + CDbl(Rs3("MNT_HT_FACT"))
				Rs3.MoveNext
			end if
		end if
	end if
	Rs3.Close
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(totala,2)%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(totala/12,2)%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="31" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <%
		Rs.MoveNext
	next
'	Rs.MoveFirst
	end if
%>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font size="1"><strong><font color="#4B0097">���</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total1,2)%><%totala = total1%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total2,2)%><%totala = totala + total2%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total3,2)%><%totala = totala + total3%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total4,2)%><%totala = totala + total4%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total5,2)%><%totala = totala + total5%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total6,2)%><%totala = totala + total6%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total7,2)%><%totala = totala + total7%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total8,2)%><%totala = totala + total8%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total9,2)%><%totala = totala + total9%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total10,2)%><%totala = totala + total10%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total11,2)%><%totala = totala + total11%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total12,2)%><%totala = totala + total12%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(totala,2)%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(totala/12,2)%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="31" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
            </table>
            
          </td>
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
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><div align="center"><span style="background-color: #FFFFFF"><font color="#4B0097"> 
              <input id="back" type="button" value=" ��Ѻ˹����� " name="back" onClick="top.HideWindow('Desktop2');" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'">
              </font></span></div></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
</body>
</html>