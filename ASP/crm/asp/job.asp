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
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5">�Ҫվ</font></b></td>
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
          <td><table width="50%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="15%"><div align="center"><strong><font color="#4B0097" size="3">�ӴѺ</font></strong></div></td>
                <td width="60%"><div align="center"><strong><font color="#4B0097" size="3">�Ҫվ</font></strong></div></td>
                <td width="25%"><div align="center"></div></td>
              </tr>
              <%
	Dim Sql, Rs
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Sql = "SELECT * FROM EMP_JOB  order by JOBID"
	Rs.Open SQL, Session("Conn1"),1,3	
		 if Rs.RecordCount <> 0  then
	Dim i
	i=1
	do while not Rs.EOF
%>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2"><%=i%></font></div></td>
                <td><font color="#4B0097" size="2">&nbsp;&nbsp;<%=Rs("JOBNAME")%></font></td>
                <td align="center"><input name="edit" type="button" id="edit" value="���" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,300,'edit_job.asp?JOBNAME=<%=Rs("JOBNAME")%>&JOBID=<%=Rs("JOBID")%>');">
                  <input name="del" type="button" id="del" value="  ź  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick=" if(confirm('�׹�ѹ���ź')==true){top.RunWindow('Temp1','delete_job.asp?JOBID=<%=Rs("JOBID")%> ') } "> </td>
              </tr>
              <%         
		i=i+1
		Rs.Movenext
	loop
	end if 
%>
              <tr> 
                <td colspan="3"><div align="right">
                    <input name="add" type="button" id="add" value=" ���� " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,300,'sub_job_add.asp'); ">
                  </div></td>
              </tr>
            </table>
          </td>
        </tr>
         <% if Rs.Recordcount = 0 then %><tr><td align = "center"><font color="#4B0097" size="2"> Record Not Found!! </font></td></tr><% end if %>
        <tr> 
          <td><div align="center">
              <input name="close" type="button" class="button" id="close" onClick="top.HideWindow(self.name);" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="��Ѻ˹�����">
            </div></td>
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
<div align="center">
  <center>
  </center>
</div>
<div align="center">
  <center>
  </center>
</div>

    </body>

</html>