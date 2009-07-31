<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ReportContact.aspx.vb" Inherits="CSC_IND_Internet.ReportContact" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>�����š��������/ͺ�� (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/CSC_IND.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">			
			function SearchItem(){
				document.forms(0).elements("ServerAction").value="SEARCH"
				document.forms(0).submit();   
			}
			function SelectItem(ContID){
				document.location.href="ReportContact_Data.aspx?ServerAction=LOAD&ContactID="+ContID;
			}
			function OpenFile(fileName){
				if (fileName != '') {
					window.open("../Files/Attach/CONTACT/"+fileName,"","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes")
				}
			}
			</script>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="100%" align="left" border="0">
			<tr>
				<td>
					<form id="frmSearchRpt" method="post" runat="server">
						<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">
						<input id="SortIndex" type="hidden"  value="<%=SortIndex%>" name="SortIndex"> <input id="SortField" type="hidden" value="<%=SortField%>" name="SortField">
						<input id="CompanyID" type="hidden" name="CompanyID" value="<%=CompanyID%>"> <input id="SoldTo" type="hidden" name="SoldTo" value="<%=SoldTo%>">
						<input id="ShipTo" type="hidden" name="ShipTo" value="<%=ShipTo%>">
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td colSpan="2">
									<TABLE height="30" cellSpacing="0" cellPadding="2" width="100%" border="0">
										<TR>
											<TD class="HTitle" width="20"></TD>
											<TD class="HTitle">��������§ҹ��õԴ�������Ѻ�١���</TD>
										</TR>
									</TABLE>
								</td>
							</tr>
							<TR>
								<TD width="80" colSpan="2" height="5"></TD>
							</TR>
							<tr>
								<td width="80">&nbsp;</td>
								<td>
									<TABLE class="criTableItem" cellSpacing="0" cellPadding="1" width="800" border="0">
										<TR class="criTableHead">
											<TD align="center" colSpan="4" height="25">��˹����͹�</TD>
										</TR>
										<TR>
											<TD align="right" width="150">ࢵ��Ժѵԡ��&nbsp;:&nbsp;</TD>
											<TD align="left" colSpan="3"><asp:dropdownlist id="lstZone" runat="server"></asp:dropdownlist></TD>
										</TR>
										<TR>
											<TD align="right">���ʺ���ѷ (Ship-to)&nbsp;:&nbsp;</TD>
											<TD align="left"><asp:textbox id="txtCustID" runat="server" Width="120px"></asp:textbox></TD>
											<TD align="right">���ͺ���ѷ&nbsp;:&nbsp;</TD>
											<TD align="left"><asp:textbox id="txtCust" runat="server" Width="250px"></asp:textbox></TD>
										</TR>
										<TR>
											<TD align="right">�ѹ���Դ���&nbsp;:&nbsp;</TD>
											<TD align="left" width="150"><asp:textbox id="txtFrDate" runat="server" MaxLength="10" Width="80px"></asp:textbox><A onclick="javascript:Calendar_Open('txtFrDate')"><IMG id="btnFrDate" alt="��ԷԹ" src="../images/Button/calendar_icon.gif" runat="server"></A></TD>
											<td align="right" width="150">�֧&nbsp;:&nbsp;</td>
											<td><asp:textbox id="txtToDate" runat="server" MaxLength="10" Width="80px"></asp:textbox><A onclick="javascript:Calendar_Open('txtToDate')"><IMG id="btnToDate" alt="��ԷԹ" src="../images/Button/calendar_icon.gif" runat="server"></A></td>
										</TR>
										<TR>
											<TD align="right">��������õԴ���&nbsp;:&nbsp;</TD>
											<TD align="left" width="150" colSpan="3"><asp:dropdownlist id="lstMethod" runat="server"></asp:dropdownlist></TD>
										</TR>
										<TR>
											<TD vAlign="middle" align="center" colSpan="4" height="31"><A onclick="javascript:SearchItem();" href="#"><asp:imagebutton id="btnSearch" tabIndex="1" runat="server" ImageUrl="../Images/Button/btn_search.gif"></asp:imagebutton></A></TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</table>
						<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD colSpan="2" height="7">&nbsp;</TD>
							</TR>
							<TR>
								<TD align="center" colSpan="2" height="16"><asp:panel id="pnlResult" runat="server">
										<asp:datagrid id="dgResult" runat="server" Width="940" AllowSorting="True" PageSize="30" AllowPaging="True"
											AutoGenerateColumns="False" DataKeyField="CONT_ID">
											<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
											<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
											<ItemStyle CssClass="TableItem"></ItemStyle>
											<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
											<Columns>
												<asp:TemplateColumn HeaderText="�Ţ���">
													<HeaderStyle Width="120px" CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" Width="120px" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>														
														<%# DataBinder.Eval(Container.DataItem,"CONT_ID","") %>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="�ѹ���">
													<HeaderStyle Width="80px" CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" Width="80px" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>
														<%# DataBinder.Eval(Container.DataItem,"CONT_DATE","{0:dd/MM/yyyy}") %>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="��������õԴ���">
													<HeaderStyle Width="140px" CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left" Width="140px" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>
														<%# DataBinder.Eval(Container.DataItem,"TYPE_NAME","") %>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="���ʺ���ѷ">
													<HeaderStyle Width="100px" CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="center" Width="100px" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>
														<%# DataBinder.Eval(Container.DataItem,"SHIP_TO","") %>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="���ͺ���ѷ">
													<HeaderStyle Width="250px" CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left" Width="250px" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>
														<%# DataBinder.Eval(Container.DataItem,"SCUST_NAME","") %>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="������§ҹ����Ѻ�١���">
													<HeaderStyle Width="250px" CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left" Width="180px" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>
														<a class="ListLink" href="javascript:OpenFile('<%# DataBinder.Eval(Container.DataItem,"REPORT_FILE") %>');" >
																<%# DataBinder.Eval(Container.DataItem,"REPORT_NAME") %>
															</a>
													</ItemTemplate>
												</asp:TemplateColumn>
											</Columns>
											<PagerStyle HorizontalAlign="Right" PageButtonCount="15" Mode="NumericPages" CssClass="TablePagingItem"></PagerStyle>
										</asp:datagrid>
									</asp:panel></TD>
							</TR>
							<tr>
								<td align="center" colSpan="2"><asp:label id="lblNotFound" runat="server" Visible="False" Font-Size="Medium" Font-Bold="True"
										ForeColor="RoyalBlue">��辺�����š�ä���</asp:label></td>
							</tr>
						</TABLE>
					</form>
				</td>
			</tr>
		</table>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
			alert("<%=Replace(Msg,vbCrLf," ")%>");
		</SCRIPT>
		<%end if%>
	</body>
</HTML>
