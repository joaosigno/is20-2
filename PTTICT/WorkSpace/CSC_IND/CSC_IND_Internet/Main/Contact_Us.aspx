<%@ Page CodeBehind="Contact_Us.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Contact_Us" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : �ٹ���ԡ���١��ҡ�ҫ�����ҵ�</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,�ٹ���ԡ���١��ҡ�ҫ�����ҵ� ������ص��ˡ�����м�Ե俿�����ͧ,��ҫ�����ҵ�,��ҫ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<script language="javascript">
				function SendItem() {
					var ErrMsg;
					ErrMsg="";
					if (document.forms(0).elements("txtSubject").value =='') ErrMsg+="* ��Ǣ�� \n";
					if (document.forms(0).elements("txtDetail").value =='') ErrMsg+="* ��Ǣ�� \n";
					if (document.forms(0).elements("txtName").value =='') ErrMsg+="* ����-ʡ�� \n";
					if (document.forms(0).elements("txtMail").value =='') ErrMsg+="* E-Mail \n";					
					if (ErrMsg != "" ) {
						alert("��س��кآ����ŷ��������ú��ǹ��е�Ǩ�ͺ�����١��ͧ \n"+ErrMsg);
					} else {
						document.forms(0).elements("ServerAction").value = "SEND";
						document.forms(0).submit();    
					}
				}
				function CancelItem() {
					document.forms(0).elements("ServerAction").value = "CANCEL";
					document.forms(0).submit();
				}
			</script>
	</HEAD>
	<body>
		<form id="frmContact" method="post" runat="server">
			<input id="ServerAction" type="hidden" name="ServerAction">
			<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td><!--#include file="../Includes/header.aspx" --></td>
							</tr>
							<TR>
								<td height="140" background="../images/menu/banner3.jpg">&nbsp;</td>
							</TR>
							<tr>
								<td><!--#include file="../Includes/menu.aspx" --></td>
							</tr>
							<tr>
								<td height="2"></td>
							</tr>
							<tr>
								<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td valign="top">&nbsp;</td>
										</tr>
										<tr>
											<td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
													<tr>
														<td><img src="../images/title_cont.jpg" width="539" height="38"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																<tr>
																	<td class="T_blue13"><strong><u>��ǹ��ԡ���١��ҡ�ҫ�</u></strong></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13">��� 17 ����ѷ ���. �ӡѴ (��Ҫ�)
																		<br>
																		555 �������Ǵ��ѧ�Ե ࢵ��بѡ� ��ا෾� 10900
																		<br>
																		���Ѿ�� : 0-2537-3235-9
																		<br>
																		����� : 0-2537-3257-8
																		<br><% if Session("USER_NAME") & "" <> "" then %>
																		��������ö�Դ��ͼ�ҹ E-mail : ��� <a href="mailto:cscng@pttplc.com">cscng@pttplc.com</a><% end if %></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13">
																		<table width="98%" border="0" cellspacing="0" cellpadding="0">
																			<tr>
																				<td colspan="2" class="T_blue13"><strong><u>��ǹ��Ժѵԡ���к����</u></strong></td>
																			</tr>
																			<tr>
																				<td colspan="2">&nbsp;</td>
																			</tr>
																			<tr>
																				<td width="50%">
																					<table width="98%" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td class="T_gray13"><u>��ǹ��Ժѵԡ���к����ࢵ 1</u></td>
																						</tr>
																						<tr>
																							<td class="T_gray13">59 �. 8 �. ��¾�� �. �һ�� �. ���ͧ �.�ź��� 20000</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">���Ѿ��&nbsp;:&nbsp;0-2537-2000 ��� 5000, 0-3827-4390-5</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">�����&nbsp;:&nbsp;0-2537-2000 ��� 5014, 0-3827-4398, 
																								0-3827-6390</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																					</table>
																				</td>
																				<td width="50%" class="T_gray13">
																					<table width="98%" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td class="T_gray13"><u>��ǹ��Ժѵԡ���к����ࢵ 3</u></td>
																						</tr>
																						<tr>
																							<td class="T_gray13">555 �. �آ���Է �. �Һ�Ҿش �. ���ͧ �.���ͧ 21150</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">���Ѿ��&nbsp;:&nbsp;0-3868-5016</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">�����&nbsp;:&nbsp;0-3868-5009</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																					</table>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<table width="98%" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td class="T_gray13"><u>��ǹ��Ժѵԡ���к����ࢵ 2</u></td>
																						</tr>
																						<tr>
																							<td class="T_gray13">71 �.2 �.����¸Թ �.ʹѺ�ֺ �.�ѧ���� �.��й�������ظ�� 13170
																							</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">���Ѿ��&nbsp;:&nbsp;0-2537-2000 ��� 5802, 0-2537-3273</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">�����&nbsp;:&nbsp;0-3572-3022-32</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																					</table>
																				</td>
																				<td class="T_gray13"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td class="T_gray13"><u>��ǹ��Ժѵԡ���к����ࢵ 5</u></td>
																						</tr>
																						<tr>
																							<td class="T_gray13" height="16">111 �. 7 �. ྪ���� �. ������͹ �. ���ͧ �.�Ҫ���� 70000
																							</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">���Ѿ��&nbsp;:&nbsp;0-2637-2000 ��� 5900, 0-3231-7371-9</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">�����&nbsp;:&nbsp;0-3231-7385</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																					</table>
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td class="T_gray13"><span class="T_green13"><strong><u>�ó��Դ�˵�����Щء�Թ 
																					����ö�Դ��͵�ʹ 24 ������� ���� </u></strong>
																		</span></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13"><u>�ٹ��Ǻ����к�����觡�ҫ (Gas Control) �ѧ��Ѵ�ź���</u>
																		<br>
																		���Ѿ�� : 0-3827-4397, 0-3827-4399, 0-1210-2852
																		<br>
																		����� : 0-3827-4398</td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td height="3" background="../images/information/l2.jpg"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<% if Session("USER_NAME") & "" <> "" then %>
													<tr>
														<td bgcolor="#f9fcff"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="1">
																<form name="form2" method="post" action="">
																	<TBODY>
																		<tr>
																			<td height="20" colspan="2" class="T_green13"><u><strong>�Դ���</strong></u></td>
																		</tr>
																		<tr>
																			<td height="20" colspan="2" valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="20" align="right" valign="top" class="T_gray13">��Ǣ��&nbsp;:&nbsp;</td>
																			<td valign="top" class="T_gray13">
																				<asp:TextBox id="txtSubject" runat="server" Width="400px"></asp:TextBox></td>
																		</tr>
																		<tr>
																			<td width="120" height="20" align="right" valign="top" class="T_gray13">��ͤ���&nbsp;:&nbsp;</td>
																			<td valign="top" class="T_gray13">
																				<asp:TextBox id="txtDetail" runat="server" Width="400px" TextMode="MultiLine" Rows="4"></asp:TextBox>
																			</td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">����-ʡ��&nbsp;:&nbsp;</td>
																			<td class="T_gray13"><FONT face="Tahoma">
																					<asp:TextBox id="txtName" runat="server" Width="300px"></asp:TextBox></FONT></td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">E-Mail&nbsp;:&nbsp;</td>
																			<td class="T_gray13"><FONT face="Tahoma">
																					<asp:TextBox id="txtMail" runat="server" Width="300px"></asp:TextBox></FONT></td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">�������Ѿ��&nbsp;:&nbsp;</td>
																			<td class="T_gray13">
																				<asp:TextBox id="txtTel" runat="server" Width="200px"></asp:TextBox></td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13"><A onclick="JavaScript:SendItem();" href="#"><IMG src="../Images/Button/send.jpg" border="0"></A>&nbsp;&nbsp;<A onclick="JavaScript:CancelItem();" href="#"><IMG src="../images/Button/btn_cancel2.gif" border="0"></A></td>
																		</tr>
																</form>
															</table>
														</td>
													</tr>
													<% end if %>
													<tr>
														<td>&nbsp;</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td valign="top">&nbsp;</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><!--#include file="../Includes/footer.aspx" --></td>
							</tr>
						</table>
					</td>
				</tr>
				</TBODY></table>
		</form>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
			alert("<%=Replace(Msg,vbCrLf," ")%>");
		</SCRIPT>
		<%end if%>
		<% if URLLink <> "" Then %>
		<SCRIPT language="javascript">
			window.onload = function() { 
					window.open("<%=URLLink%>","","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=no,width=350,height=250");
					//window.location.href="<%=URLLink%>";
					}
		</SCRIPT>
		<% end if%>
	</body>
</HTML>
