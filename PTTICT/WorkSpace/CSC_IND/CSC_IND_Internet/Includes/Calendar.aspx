<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Calendar.aspx.vb" Inherits="CSC_IND_Internet.Calendar" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Calendar</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../CSS/CSC_IND.css" type="text/css" rel="stylesheet">
			<SCRIPT language="javascript">
			function FindDate(){
				var ErrMsg;
					ErrMsg="";
				if (document.Form1.elements("txtYear").value < 1900) ErrMsg+="* �� �.�. �������¡��� 1900 \n";
				if (IsNumeric(document.Form1.elements("txtYear").value) ==false) ErrMsg+="* �� �.�. ����繢����Ū�Դ����Ţ \n";
					if (ErrMsg != "" ) {
						alert("��س��кآ����ŷ��������ú��ǹ��е�Ǩ�ͺ�����١��ͧ \n"+ErrMsg);
					} else {
						document.Form1.elements("ServerAction").value="SEARCH"
						document.Form1.submit();
					}
			}
			function IsNumeric(sText){
				var ValidChars = "0123456789.,";
				var IsNumber=true;
				var Char;
				for (i = 0; i < sText.length && IsNumber == true; i++){ 
					Char = sText.charAt(i); 
					if (ValidChars.indexOf(Char) == -1) 
					{
						IsNumber = false;
					}
				}
					return IsNumber;
				}
			</SCRIPT>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<input type="hidden" id="ServerAction" name="ServerAction">
			<table style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 0px" cellSpacing="0" cellPadding="0"
				width="270" border="0">
				<tr>
					<td align="center" colSpan="5"><asp:calendar id="usrCalendar" runat="server" Width="220px" FirstDayOfWeek="Sunday" NextPrevFormat="ShortMonth">
							<TodayDayStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" Font-Bold="True" BorderWidth="1px"
								ForeColor="Blue" BorderStyle="Solid" BorderColor="DarkOrange" BackColor="Transparent"></TodayDayStyle>
							<SelectorStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" Font-Bold="True" ForeColor="#404040"
								BackColor="#FFFF80"></SelectorStyle>
							<DayStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif"></DayStyle>
							<DayHeaderStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" Font-Bold="True" ForeColor="MediumBlue"
								BackColor="Honeydew"></DayHeaderStyle>
							<SelectedDayStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" Font-Bold="True" Wrap="False"
								ForeColor="#404040" BackColor="#FFFF80"></SelectedDayStyle>
							<TitleStyle Font-Size="X-Small" Font-Underline="True" Font-Names="Microsoft Sans Serif" Font-Bold="True"
								BackColor="AliceBlue"></TitleStyle>
							<WeekendDayStyle Font-Size="X-Small" Font-Names="Microsoft Sans Serif" ForeColor="Red" BackColor="Cornsilk"></WeekendDayStyle>
							<OtherMonthDayStyle Font-Italic="True" ForeColor="DarkGray"></OtherMonthDayStyle>
						</asp:calendar></td>
				</tr>
				<tr>
					<td align="center">��͹&nbsp;</td>
					<td align="center"><asp:dropdownlist id="lstMonth" runat="server">
							<asp:ListItem Value="1">���Ҥ�</asp:ListItem>
							<asp:ListItem Value="2">����Ҿѹ��</asp:ListItem>
							<asp:ListItem Value="3">�չҤ�</asp:ListItem>
							<asp:ListItem Value="4">����¹</asp:ListItem>
							<asp:ListItem Value="5">����Ҥ�</asp:ListItem>
							<asp:ListItem Value="6">�Զع�¹</asp:ListItem>
							<asp:ListItem Value="7">�á�Ҥ�</asp:ListItem>
							<asp:ListItem Value="8">�ԧ�Ҥ�</asp:ListItem>
							<asp:ListItem Value="9">�ѹ��¹</asp:ListItem>
							<asp:ListItem Value="10">���Ҥ�</asp:ListItem>
							<asp:ListItem Value="11">��Ȩԡ�¹</asp:ListItem>
							<asp:ListItem Value="12">�ѹ�Ҥ�</asp:ListItem>
						</asp:dropdownlist></td>
					<td align="center">�� �.�.&nbsp;</td>
					<td align="center">
						<asp:TextBox id="txtYear" runat="server" Width="50px" MaxLength="4"></asp:TextBox><a href="#" onclick="JavaScript:FindDate();"><input type="button" id="btnGo" name="btnGo" runat="server" value="..."></a></td>
					<td align="center"></td>
				</tr>
			</table>
		</form>
		<%if  CloseMe then %>
		<SCRIPT language="vbscript">
			window.close 
		</SCRIPT>
		<%end if%>
	</body>
</HTML>
