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
<body bgcolor="#E8F8FF" onLoad="document.form1.cgname.focus();">
<form name="form1" method="post" action="">
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

	Dim cus_id, cbus, cmcode, cgcode, area, prov, prov_name, iframe
	cus_id = Request.QueryString("cus_id")
	cbus = Request.QueryString("cbus")
	cmcode = Request.QueryString("cmcode")
	area = Request.QueryString("area")
	prov = Request.QueryString("prov")
	iframe = Request.QueryString("iframe")
%>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td width="90%"><font color="#FF00FF" size="4" face="JasmineUPC"><b>�Ըա�û�͹������</b></font></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td width="80%"><p><font size="2" color="#FF00FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����Ѻ 
                User ����ͧ�����������㹪�ͧ�ͧ�����Ң�&nbsp; ��������§�����Ң���ҹ�� 
                <u>����ͧ�кت��ͺ���ѷ���ͪ����١���</u>&nbsp; ��&nbsp; ��ҵ�ͧ������� 
                Customer Grouping&nbsp; �ͧ��Ҥ�á�ԡ��� �ҢҺ�ҹ�Ҵ&nbsp; <u> 
                ��������§�ҢҺ�ҹ�Ҵ</u>&nbsp; �繵� </font></p></td>
            <td width="10%">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="95%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
          <tr> 
            <td width="25%"  valign="bottom"><div align="right"><font color="#4b0097" size="2">������١��Ҹ�áԨͧ���</font></div></td>
            <td width="2%" valign="bottom" rowspan="13"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="73%"  valign="bottom"><p align="left"> 
                <select name="cbus" id="cbus" onChange="document.body.style.cursor='wait'; top.RunWindow('Desktop3','maingroup_add.asp?cus_id=<%=cus_id%>&cbus='+document.form1.cbus.value+'&area=<%=area%>&prov=<%=prov%>');">
                  <%
	Sql = "SELECT CBUS, NBUS FROM BUSINESS_TYPE GROUP BY CBUS, NBUS "
	Rs.Open Sql,Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                  <option value="<%=Rs("CBUS")%>" <%if Rs("CBUS")=cbus then%>selected<%end if%>><%=Rs("CBUS")&" - "&Rs("NBUS")%></option>
                  <%
		Rs.MoveNext
	loop
	Rs.Close
%>
                </select></div>
                </td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  color="#4b0097" size="2">�����١���</font></div></td>
            <td valign="bottom"><div align="left"> 
                <select name="cmcode" id="cmcode" onChange="document.body.style.cursor='wait'; top.RunWindow('Desktop3','maingroup_add.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode='+document.form1.cmcode.value+'&area=<%=area%>&prov=<%=prov%>');">
                  <%
	if cbus<>"" then
		Sql = "SELECT CM_CODE, CM_NAME	FROM COMP_MAIN	WHERE (CBUS = N'" & cbus & "') "
		Rs.Open Sql,Session("Conn1"),1,3
	
		do while not Rs.EOF
%>
                  <option value="<%=Rs("cm_code")%>" <%if Rs("CM_CODE")=cmcode then%>selected<%end if%>><%=Rs("cm_code")&" - "&Rs("cm_name")%></option>
                  <%
			Rs.MoveNext
		loop
		Rs.Close
	end if
%>
                </select>
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><p align="right"><font  size="2" color="#4B0097">�Ҥ��áԨ</font></div></td>
            <td valign="bottom"><p align="left"> 
                <select name="area" id="area" onChange="document.body.style.cursor='wait'; top.RunWindow('Desktop3','maingroup_add.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>&area='+document.form1.area.value);">
                  <option value="0" <%if Cint(area)=Cint(0) then%>selected<%end if%>>0</option>
                  <option value="1" <%if Cint(area)=Cint(1) then%>selected<%end if%>>1</option>
                  <option value="2" <%if Cint(area)=Cint(2) then%>selected<%end if%>>2</option>
                  <option value="3" <%if Cint(area)=Cint(3) then%>selected<%end if%>>3</option>
                  <option value="4" <%if Cint(area)=Cint(4) then%>selected<%end if%>>4</option>
                  <option value="5" <%if Cint(area)=Cint(5) then%>selected<%end if%>>5</option>
                  <option value="6" <%if Cint(area)=Cint(6) then%>selected<%end if%>>6</option>
                  <option value="7" <%if Cint(area)=Cint(7) then%>selected<%end if%>>7</option>
                  <option value="8" <%if Cint(area)=Cint(8) then%>selected<%end if%>>8</option>
                  <option value="9" <%if Cint(area)=Cint(9) then%>selected<%end if%>>9</option>
                </select></div>
                </td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097"> 
                �ѧ��Ѵ</font></div></td>
            <td valign="bottom"><div align="left"> 
                <select name="prov" id="prov" onChange="document.body.style.cursor='wait'; top.RunWindow('Desktop3','maingroup_add.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>&area=<%=area%>&prov='+document.form1.prov.value);">
                  <%
	Sql = "SELECT PROVINCE_ID, PROVINCE FROM PROVINCE WHERE (AREA = '" & area & "')"
	Rs.Open Sql,Session("Conn1"),1,3

	Rs.MoveFirst
	prov_name=Rs("PROVINCE")	
	do while not Rs.EOF
%>
                  <option value="<%=Rs("PROVINCE_ID")%>" <%if Cint(prov)=Cint(Rs("PROVINCE_ID")) then%>selected<%prov_name=Rs("province")%><%end if%>><%=Rs("PROVINCE")%></option>
                  <%
		Rs.MoveNext
	loop
	Rs.Close
%>
                </select>
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">�����Ң�</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="cgname" type="text" id="cgname" size="30" maxlength="50" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.band.focus();}">
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">�����Ҥ��</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="band" type="text" id="band" size="25" maxlength="50" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.home.focus();}">
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">�Ţ���</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="home" type="text" id="home" size="10" maxlength="10" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.soi.focus();}">
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">���</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="soi" type="text" id="soi" size="25" maxlength="30" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.street.focus();}">
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">���</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="street" type="text" id="street" size="25" maxlength="30" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.tumbol.focus();}">
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">�Ӻ�</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="tumbol" type="text" id="tumbol" size="25" maxlength="30" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.dis.focus();}">
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">�����</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="dis" type="text" id="dis" size="25" maxlength="30" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.postcode.focus();}">
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">�ѧ��Ѵ</font></div></td>
            <td valign="bottom"><div align="left"><font  size="2" color="#4B0097"><%=prov_name%> 
                <input name="prov_name" type="hidden" id="prov_name" value="<%=prov_name%>">
                </font></div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">������ɳ���</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="postcode" type="text" id="postcode" size="6" maxlength="5" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.send.focus();}">
              </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><div align="center"><font color="#4B0097"> 
          <input name="send" type="button" id="send" value=" �ѹ�֡������ " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; <span style="background-color: #FFFFFF"><font color="#4B0097"> 
          <input id="back" type="button" value=" ��Ѻ˹����� " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
          <input name="cus_id" type="hidden" id="cus_id" value="<%=cus_id%>">
          </font> </font></div></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<script language="JavaScript">
	function dosend(){
		if(document.form1.cgname.value==""){
			alert('��س��кت����Ң�');
			document.form1.cgname.focus();
			return;
		}

		if(confirm('�׹�ѹ��úѹ�֡������')){
			top.RunWindow('Temp1','temp_save_sub_custmain_edit11_maingroup_add.asp?iframe='+self.name+'&oldiframe=<%=iframe%>');
		}
	}
</script>
</body>
</html>
