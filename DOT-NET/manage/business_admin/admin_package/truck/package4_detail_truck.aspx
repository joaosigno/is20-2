<%@ Page CodeBehind="package4_detail_truck.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.package4_detail_truck" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=tis-620">
		<LINK href="../../../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">BODY { BACKGROUND-IMAGE: none; MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
	A:active { TEXT-DECORATION: none }
	A:link { TEXT-DECORATION: none }
	A:visited { TEXT-DECORATION: none }
	A:hover { TEXT-DECORATION: none }
	</style>
			<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
			</script>
	</HEAD>
	<body onload="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<tr>
					<td width="15"></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693">
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><img src="../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="../car/package2_list.aspx" class="A_black_NOunderline">��¡��ᾤࡨ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">��¡���ɳҾ����</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">��¡�õ��˹觧ҹ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<asp:label id="upPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label>
								</td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
						</table>
					</td>
					<td></td>
					<td vAlign="top"></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width='693'>
									<asp:label id="topicTxt" runat="server"></asp:label>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" height="31" cellSpacing="0" cellPadding="0" width="693" background="../../../images/table/f_line.gif"
										border="0">
										<tr>
											<td colSpan="7" height="5"></td>
										</tr>
										<tr>
											<td width="61" height="20">
												<div align="center">�����:</div>
											</td>
											<td width="113" height="20">
												<div align="center"><font id='opC' onclick="openClose();" class="fontBl" onmouseover="document.all.opC.className='fontBl1'"
														style="CURSOR: hand" onmouseout="document.all.opC.className='fontBl'"><div id="openNotice">�Դ/�Դ��С��</div>
													</font>
												</div>
											</td>
											<td width="98" height="20">
												<div align="center"><asp:hyperlink id="edit_ad" runat="server" class="A_black_underline"></asp:hyperlink></div>
											</td>
											<td width="118" height="20">
												<div align="center">
													<DIV align="center"><asp:HyperLink class="A_black_underline" id="truckList" runat="server"></asp:HyperLink></DIV>
												</div>
											</td>
											<td width="84" height="20">
												<div align="center"><asp:HyperLink class="A_black_underline" id="printThis" runat="server"></asp:HyperLink></div>
											</td>
											<td width="84" height="20">
												<div align="center"><font id='delAd' onclick="deleteAds();" class="fontBl" onmouseover="document.all.delAd.className='fontBl1'"
														style="CURSOR: hand" onmouseout="document.all.delAd.className='fontBl'">ź��С��</font></div>
											</td>
											<td width="135" height="20">
												<div align="center"></div>
											</td>
										</tr>
										<tr>
											<td colSpan="7" height="6"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../../images/header/h_b_693+ar.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="526"><asp:label id="truckBrand" runat="server" CssClass="H1_white" ForeColor="Transparent"></asp:label></td>
											<td width="10"></td>
											<td width="127">
												<div align="right">�&nbsp;
													<asp:label id="head_price" runat="server" CssClass="H1_white" ForeColor="Transparent"></asp:label></div>
												<DIV></DIV>
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" border="0">
										<tr>
											<td vAlign="top" width="339">
												<table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td width="339">
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">��������´</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/dtl_vehicle.gif"
																border="0">
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">������ö</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="category" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�Ҥ�</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">��Ҿö</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="status" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">��</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><FONT face="Tahoma"><asp:label id="yearcar" runat="server" CssClass="Font_black_LH_17px"></asp:label></FONT></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�Ţ����</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><FONT face="Tahoma"><asp:label id="miles" runat="server" CssClass="Font_black_LH_17px"></asp:label></FONT></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">����������ͧ¹��</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="enginetype" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">���ѧ����ͧ¹��</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="power" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">��</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="colors" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�ӹǹ���</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="Prao" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�ӹǹ��ҢѺ</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><FONT face="Tahoma"><asp:label id="praoDrive" runat="server" CssClass="Font_black_LH_17px"></asp:label></FONT></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">���˹ѡ��÷ء</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><FONT face="Tahoma"><asp:label id="loadTruck" runat="server" CssClass="Font_black_LH_17px"></asp:label></FONT></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">���˹ѡö</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="weightTruck" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�к������</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="gear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�ӹǹ�����</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="numgear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�ӹǹ�ٺ</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="numpump" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">��Ҵ����ͧ¹��</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="cc" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�ӹǹ��е�</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="numdoor" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�ӹǹ�����</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="numseat" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�ѵ��������ͧ����ѹ</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="fuelconsume" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�����ضѧ����ѹ</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="fueltank" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">��Ǩ�ͺö��������ش</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="lastcheck" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">ö���غѵ��˵�(�ѧ������)</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="accident" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5" height="16"></td>
																	<td vAlign="top" width="114" height="16">
																		<div align="right">ö�ջ�Сѹ</div>
																	</td>
																	<td width="11" height="16"></td>
																	<td width="204" height="16"><asp:label id="insurrunce" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5" height="16"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">�Ţ���ö</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="carid" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="2" src="../../../images/lines/dtl.gif" width="339"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">�ػ�ó������</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/g_339.gif"
																border="0">
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329"><asp:label id="accessory" runat="server" CssClass="Font_black_LH_17px" Height="70px" Width="100%"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="2" src="../../../images/lines/dtl.gif" width="339"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">�������������</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/g_339.gif"
																border="0">
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329"><asp:label id="description" runat="server" CssClass="Font_black_LH_17px" Height="70px" Width="100%"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="2" src="../../../images/lines/dtl.gif" width="339"></td>
													</tr>
												</table>
											</td>
											<td width="15"></td>
											<td vAlign="top" width="339">
												<table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td class="dtl_pic" width="339" height="327">
															<div align="center"><asp:label id="image1" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
														</td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table height="45" cellSpacing="0" cellPadding="0" border="0">
																<tr>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image2" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																	<td width="10"></td>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image3" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																	<td width="10"></td>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image4" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																	<td width="10"></td>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image5" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">�����ŵԴ���</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/dtl_con.gif"
																border="0">
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">���ͺ���ѷ/�Ԩ���</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="compname" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">�������</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="Addr" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">���Ѿ��</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="Tel" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">Fax</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="fax" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">�ѹ-���ҷӡ��</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="officeHour" runat="server"></asp:label><!--9:00 am - 5:00 pm--></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">�������������</div>
																	</td>
																	<td width="11"></td>
																	<td width="241">
																		<!-- Company Map--><IMG height="17" src="../../../images/objects/arrow_orange_17.gif" width="15" align="absMiddle">
																		<asp:HyperLink class="A_black_underline" id="de_map" runat="server">&#3649;&#3612;&#3609;&#3607;&#3637;&#3656;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;</asp:HyperLink><br>
																		<!-- Company Info --><IMG height="17" src="../../../images/objects/arrow_orange_17.gif" width="15" align="absMiddle">
																		<asp:HyperLink class="A_black_underline" id="de_home" runat="server">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;&#3649;&#3621;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;&#3586;&#3629;&#3591;&#3626;&#3617;&#3634;&#3594;&#3636;&#3585;</asp:HyperLink></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/dtl.gif"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><asp:label id="downPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label>
								</td>
							</tr>
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="../car/package2_list.aspx" class="A_black_NOunderline">��¡��ᾤࡨ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">��¡���ɳҾ����</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">��¡�õ��˹觧ҹ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" valign="top"></td>
				</tr>
				</table>
			</TABLE>
			<script language="javascript">
				getOpenCl();
				function changeMainPic(picNo,picUrl){
					manage.package4_detail_truck.showMainPic(picNo,picUrl,UrlBack);
				}
				function UrlBack(res){
					var img1 = document.getElementById("image1");
					//alert(res.value);
					img1.innerHTML = res.value;
				}
	
				function getOpenCl(){
					manage.package4_detail_truck.getOpTxt(txtBack);
				}
				function openClose(){
					manage.package4_detail_truck.openAd(txtBack);
				}
				function txtBack(res){
					var openNotice = document.getElementById("openNotice");
					var headTopic = document.getElementById("h1");
					var db = res.value.split("!");
					//alert(res.value);
					openNotice.innerHTML = db[0];
					headTopic.innerHTML = db[1];
				}
				
				function deleteAds(){
					if(confirm('�س��ͧ��÷���ź��С��')){
					manage.package4_detail_truck.deleteAdsAJX(urlBack);
					}
				}
				function urlBack(res){
					//var openNotice = document.getElementById("delAd");
					//openNotice.innerHTML = res.value;
					window.location.href="package3_list_truck_term_new.aspx?noticeid="+res.value;
				}
			</script>
		</form>
	</body>
</HTML>
