<?php
  include("wizards/inc/const.inc.php");
  include("wizards/inc/function.inc.php");
  include("wizards/inc/mobile.inc.php");

  $i = Send_Content("019848360", "99", "18_Jun_2006.jpg");
  if($i == 1){
    $Msg = "�к���ӡ�èѴ�������ѧ��Ͷ�ͧ͢��ҹ���º�������� �ͺ�س�ҡ��";
  }else{
    $Msg = "�к��������ö�ӡ�èѴ�������ѧ��Ͷ�ͧ͢��ҹ�� ��سҵ�Ǩ�ͺ�ա���� �ͺ�س�ҡ��";
  } 

  print $Msg;
?>
