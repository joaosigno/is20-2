<%@ Page CodeBehind="Co_generation.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Co_generation" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : �ٹ���ԡ���١��ҡ�ҫ�����ҵ�</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,�ٹ���ԡ���١��ҡ�ҫ�����ҵ� ������ص��ˡ�����м�Ե俿�����ͧ,��ҫ�����ҵ�,��ҫ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<%	
     Dim co
	co=Request.Item ("co")
	if co="" then co=1
	%>
	</HEAD>
	<body>
		<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<tr>
							<td height="140" background="../images/menu/banner4.jpg">&nbsp;</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="219" valign="top"><!--#include file="../Includes/m_info3.aspx" --></td>
										<td align="left" valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><img src="../images/title_info3.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td class="T_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Co-generation
															</u></strong>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="50%" valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Co_generation.aspx"><strong>�����ê�� 
																			(COGENERATION)</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Co_generation_engine.aspx"><strong>�к� 
																			COGENERATION �ҡ GAS ENGINE</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Co_generation_turbine.aspx"><strong>�к� 
																			COGENERATION �ҡ GAS TURBINE</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Ex_Co_generation.aspx"><strong>������ҧ�к� 
																			COGENERATION �ͧ�١��� ���. �Ѩ�غѹ</strong></a></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;�����ê�� 
														(COGENERATION)</td>
												</tr>
												<tr>
													<td class="text_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="50%" valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=1">�����ê�����¶֧</a></td>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=5">��ѡ��÷ӧҹ�ͧ 
																		GAS TURBINE</a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=2">�ҧ���͡㹡�����ѧ�ҹ</a></td>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=6">COMBINED 
																		CYCLE</a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=3">���º��º������ѧ�ҹ 
																		Ẻ����� ���Ẻ&nbsp;&nbsp;COGENERATION</a></td>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=7">BACK 
																		PRESSURE STEAM TURBINE</a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=4">���º��º 
																		����Է���Ҿ Ẻ����� ���Ẻ&nbsp;COGENERATION</a></td>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=8">EXTRACTION 
																		STEAM TURBINE</a></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td height="3" background="../images/information/l2.jpg"></td>
												</tr>
												<tr>
													<td>&nbsp;
														<% select case co
	case 1: %>
													</td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>�����ê�� 
																			���¶֧</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ü�Ե��ѧ�ҹ俿�� 
																	( ���� ��ѧ�ҹ�� ) �����Ѻ��ѧ�ҹ������͹ ( ��ҫ��͹, �ͧ������͹ ���� �͹��)</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 2: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>�ҧ���͡㹡�����ѧ�ҹ</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" class="T_gray13">1.</td>
																			<td class="T_gray13">���� ���� ��Ե��ѧ�ҹ俿�� �������ѧ�ҹ俿�Һҧ��ǹ价� 
																				�������
																			</td>
																		</tr>
																		<tr>
																			<td align="center" class="T_gray13">2.
																			</td>
																			<td class="T_gray13">���� ���� ��Ե��ѧ�ҹ俿�� ��м�Ե��ѧ�ҹ������͹�ҡ����ѹ
																			</td>
																		</tr>
																		<tr>
																			<td align="center" valign="baseline" class="T_gray13">3.</td>
																			<td class="T_gray13">��Ե俿�Ң�����ͧ ���ǹӾ�ѧ�ҹ������͹ ( Exhaust Heat 
																				)��������͡�Ҩҡ�к���Ե俿�� (Turbine Generator) ���Ӥ�����͹ (Steam or 
																				Direct Heat to process ) �ա���˹�� ���¡��� �к� COGENERATION</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 3: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>���º��º������ѧ�ҹẺ����� 
																			���Ẻ COGENERATION</u></strong></td>
															</tr>
															<tr>
																<td height="15"></td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	Ẻ����� ( CONVENTIONAL )</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/fig17.gif" width="489" height="208"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	Ẻ�����ê�� ( COGENERATION )</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/fig18.gif" width="490" height="226"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 4: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>���º��º����Է���ҾẺ����� 
																			���Ẻ COGENERATION</u></strong></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="21">&nbsp;</td>
																			<td colspan="2" class="T_blue13"><img src="../images/blue.gif" width="16" height="16">&nbsp;Ẻ����� 
																				( CONVENTIONAL )
																			</td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td width="20">&nbsp;</td>
																			<td width="125" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>System Eff.</strong></td>
																			<td class="T_gray13">= ( 100 + 170 ) / ( 244 + 200 )
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">&nbsp;</td>
																			<td class="T_gray13">= 61 %
																			</td>
																		</tr>
																		<tr>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																		<tr>
																			<td width="21">&nbsp;</td>
																			<td colspan="2" class="T_blue13"><img src="../images/blue.gif" width="16" height="16">&nbsp;Ẻ 
																				COGENERATION</td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td width="20">&nbsp;</td>
																			<td width="125" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>System Eff.</strong></td>
																			<td class="T_gray13">= ( 100 + 170 ) / ( 357 )
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">&nbsp;</td>
																			<td class="T_gray13">= 76 %</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td><% case 5: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>��ѡ��÷ӧҹ�ͧ 
																			GAS TURBINE</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">�ҡ�ȶ١�ٴ�����ѧ����ͧ�Ѵ�ҡ�� ( Compressor )</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">�ҡ�ȹ�鹶١��͹�����ѧ��ͧ������ ( Combustion chamber )</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">�����ͧ������ ������ԧ ( Natural Gas ) 
																				�ж١�մ����Ҽ���Ѻ�ҡ�� ��Шش���Դ
																			</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">��ҫ��͹�ҡ��������� �Т��µ�Ǽ�ҹ��ѧ����ͧ�ѧ�ѹ��ҫ 
																				�����ѧ�ѹ��ҫ��ع</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">᡹�ͧ����ͧ�ѧ�ѹ��ҫ�е��仢Ѻ����ͧ���俿�� (Generator ) 
																				���ͼ�Ե�����俿��</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center" valign="baseline"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">��ǹ��ҫ��͹������¨ҡ�ѧ�ѹ��ҫ�����س����Ի���ҳ 450-550 
																				ͧ�������� ��ҫ��͹��� ����ö�������������������͹</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">- � Waste Heat Boiler ���ͼ�Ե�͹�� �������ѹ���� ����</td>
																		</tr>
																		<tr>
																			<td width="33">&nbsp;</td>
																			<td class="T_gray13">
																				- �����µç ( Direct Heat ) ������㹡�кǹ��ü�Ե</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	��ѡ��÷ӧҹ�ͧ Turbines</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines1.gif" width="403" height="245"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	�ǤԴ����Ѻ��û���ء���������͹�µç</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines2.gif" width="507" height="202"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	�ǤԴ����Ѻ��û���ء���� Fluid Heating ���� Steam</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines3.gif" width="507" height="207"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	�ǤԴ����Ѻ��û���ء���� Steam ��� Chiller</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="520" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines4.gif" width="498" height="179"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	�ǤԴ����Ѻ��û���ء���� Steam Turbines</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines5.gif" width="507" height="283"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	Typical Steam Application</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines6.gif" width="491" height="292"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 6: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>COMBINED 
																			CYCLE</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Combined 
																	Cycle ��͡�ù��͹�ӷ����ҡ Waste Heat Boiler ����Ե �����俿�� 
																	�¡ѧ�ѹ�͹�� ( Steam Turbine ) 
																	�ա���˹�觡�͹���й��͹�ӷ���Ե�����ҹ㹡�кǹ��ü�Ե ( Process 
																	)&nbsp;&nbsp;&nbsp;�ѧ��� Combined Cycle �м�Ե�����俿�����٧��� 
																	�������º��ͻ���ҳ�����ҹ��� � �ѹ
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 7: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>BACK 
																			PRESSURE STEAM TURBINE</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>��ѡ��� :</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="10">&nbsp;</td>
																			<td width="25"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">����ѹ������ԧ�ж١��� Boiler ���ͼ�Ե�͹�� �������ѹ�٧ 
																				( �Ҩ�٧�֧ 100 ���� )</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">������͹�ӹ�� �����µ�Ǽ�ҹ����ͧ�ѧ�ѹ�͹�� ( Steam 
																				Turbine )
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">�ѧ�ѹ�͹�� ����ع�ѺGenerator ���ͼ�Ե�����俿��
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">�͹�ӷ���ҹ�ѧ�ѹ�͹�� �� �١������͡�ҡ��ǡѧ�ѹ 
																				����դ����ѹ ������������ҳ 3 - 20 ����
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">
																				�͹�ӹ��ж١�����㹡�кǹ��ü�Ե����</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td><% case 8: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>EXTRACTION 
																			STEAM TURBINE</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>��ѡ��� :</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="10">&nbsp;</td>
																			<td width="25" align="center" valign="baseline"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">Extraction Turbine �е�ҧ�ҡ Back Pressure Turbine 
																				�ç������͹�Ӻҧ��ǹ�١������͡��㹪�ǧ��ҧ�ͧ�ѧ�ѹ
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">�͹�ӷ�������͡�ҹ����դ����ѹ���¢�Ҵ������͡ 
																				���������������Ѻ�ش㴨ش˹�觢ͧ Process</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">�͹�ӷ������ͨж١����������µ�Ǽ�ҹ�ѧ�ѹ 
																				���ͼ�Ե俿�Ҩ��դ����ѹ��� �֧�͡�ҡ�ѧ�ѹ
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>��þԨ�ó����͡�к� COGENERATION</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="10">&nbsp;</td>
																			<td width="25" align="center"><span class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></span></td>
																			<td class="T_gray13">��Ҵ�ͧ�к�</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><span class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></span></td>
																			<td class="T_gray13">��Դ�ͧ������ԧ</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center" class="T_gray13"></td>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 
																				��ҫ�����ҵ���������ԧ�������������ҧ��觵���к� Cogeneration</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><span class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></span></td>
																			<td class="T_gray13">�ѵ����ǹ�����ҧ������͹���俿�ҷ���ç�ҹ��ͧ��� ����ҳ 2 : 1</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><span class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></span></td>
																			<td class="T_gray13">���������ع�ҧ���ɰ��ʵ��
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>TRI - GENERATION</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��� 
																	��ü�Ե俿�� ������͹ ��зӤ��������к����ǡѹ
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>��ѡ��� :</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="10">&nbsp;</td>
																			<td width="25" align="center" valign="baseline"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">������͹�ҡ Waste Heat Boiler �ж١����ѧ Absorption Chiller 
																				���ͷӤ����������Ѻ�к� Air Condition ����
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">���������ö��������Է���Ҿ����ͧ����к�</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<%end select %>
													</td>
												</tr>
											</table>
										</td>
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
		</table>
	</body>
</HTML>
