var Area0Array =  new Array(
"('-')",
"('��ا෾�')");
var Area1Array =  new Array(
"('��Ҵ')",
"('��Ҵ')",
"('��Ҩչ����')",
"('��ù�¡')",
"('������')",
"('�ź���')",
"('���ԧ���')",
"('���ͧ')",
"('�ѹ�����')");
var Area2Array =  new Array(
"('����Ҫ����')",
"('�������')",
"('���������')",
"('�غ��Ҫ�ҹ�')",
"('�ӹҨ��ԭ')",
"('�������')",
"('���Թ���')",
"('��ʸ�')");
var Area3Array =  new Array(
"('�͹��')",
"('�����ä��')",
"('�������')",
"('����Թ���')",
"('�شøҹ�')",
"('˹ͧ�������')",
"('˹ͧ���')",
"('���')",
"('ʡŹ��')",
"('��þ��')",
"('�ء������')");
var Area4Array =  new Array(
"('��ɳ��š')",
"('��⢷��')",
"('�صôԵ��')",
"('��ᾧྪ�')",
"('�ҡ')",
"('������ä�')",
"('�ԨԵ�')",
"('ྪú�ó�')",
"('�ط�¸ҹ�')",
"('��¹ҷ')");
var Area5Array =  new Array(
"('��§����')",
"('�Ӿٹ')",
"('�����ͧ�͹')",
"('��§���')",
"('�ӻҧ')",
"('�����')",
"('���')",
"('��ҹ')");
var Area6Array =  new Array(
"('��û��')",
"('��ط��Ҥ�')",
"('��ط�ʧ����')",
"('�ҭ������')",
"('ྪú���')",
"('�Ҫ����')",
"('��ШǺ���բѹ��')");
var Area7Array =  new Array(
"('����ɮ��ҹ�')",
"('�����')",
"('�йͧ')",
"('����')",
"('�ѧ��')",
"('�����ո����Ҫ')",
"('��ѧ')",
"('��к��')");
var Area8Array =  new Array(
"('ʧ���')",
"('ʵ��')",
"('�ѷ�ا')",
"('����')",
"('�ѵ�ҹ�')",
"('��Ҹ����')");
var Area9Array =  new Array(
"('��ظ��')",
"('��к���')",
"('ž����')",
"('�ԧ�����')",
"('��ҧ�ͧ')",
"('�ؾ�ó����')");
function populateProvince(inForm,selected) 
{
     var selectedArray = eval(selected + "Array");
	 while (selectedArray.length < inForm.sl_Province.options.length) 
	 {
	      inForm.sl_Province.options[(inForm.sl_Province.options.length - 1)] = null;
	 }
	 for (var i=0; i < selectedArray.length; i++) 
	 {
	      eval("inForm.sl_Province.options[i]=" + "new Option" + selectedArray[i]);
	 }
	 if (inForm.sl_Area.options[0].value == '') 
	 {
	      inForm.sl_Area.options[0]= null;
	 	  if ( navigator.appName == 'Netscape') 
		  {
	 	       if (parseInt(navigator.appVersion) < 4) 
			   {
	 	  	        window.history.go(0);
	 		   }
	 		   else 
			   {   	
	 		        if (navigator.platform == 'Win32' || navigator.platform == 'Win16') 
					{
	 				     window.history.go(0);
            		}
         	   }
          }
     }
}
function populateThailand(inForm,selected) {  
var stateArray =  new Array("('Select State','',true,true)",
     "('��ا෾�')",
	 "('��Ҵ')",
	 "('��Ҵ')",
	 "('��Ҩչ����')",
	 "('��ù�¡')",
	 "('������')",
	 "('�ź���')",
	 "('���ԧ���')",
	 "('���ͧ')",
	 "('�ѹ�����')",
	 "('����Ҫ����')",
	 "('�������')",
	 "('���������')",
	 "('�غ��Ҫ�ҹ�')",
	 "('�ӹҨ��ԭ')",
	 "('�������')",
	 "('���Թ���')",
	 "('��ʸ�')",
	 "('�͹��')",
	 "('�����ä��')",
	 "('�������')",
	 "('����Թ���')",
	 "('�شøҹ�')",
	 "('˹ͧ�������')",
	 "('˹ͧ���')",
	 "('���')",
	 "('ʡŹ��')",
	 "('��þ��')",
	 "('�ء������')",
	 "('��ɳ��š')",
	 "('��⢷��')",
	 "('�صôԵ��')",
	 "('��ᾧྪ�')",
	 "('�ҡ')",
	 "('������ä�')",
	 "('�ԨԵ�')",
	 "('ྪú�ó�')",
	 "('�ط�¸ҹ�')",
	 "('��¹ҷ')",
	 "('��§����')",
	 "('�Ӿٹ')",
	 "('�����ͧ�͹')",
	 "('��§���')",
	 "('�ӻҧ')",
	 "('�����')",
	 "('���')",
	 "('��ҹ')",
	 "('��û��')",
	 "('��ط��Ҥ�')",
	 "('��ط�ʧ����')",
	 "('�ҭ������')",
	 "('ྪú���')",
	 "('�Ҫ����')",
	 "('��ШǺ���բѹ��')",
	 "('����ɮ��ҹ�')",
	 "('�����')",
	 "('�йͧ')",
	 "('����')",
	 "('�ѧ��')",
	 "('�����ո����Ҫ')",
	 "('��ѧ')",
	 "('��к��')",
	 "('ʧ���')",
	 "('ʵ��')",
	 "('�ѷ�ا')",
	 "('����')",
	 "('�ѵ�ҹ�')",
	 "('��Ҹ����')",
	 "('��ظ��')",
	 "('��к���')",
	 "('ž����')",
	 "('�ԧ�����')",
	 "('��ҧ�ͧ')",
	 "('�ؾ�ó����')");
	  if (selected == 'USA') 
     {
	      for (var i=0; i < stateArray.length; i++)
		   {
	 	       eval("inForm.sl_Province.options[i]=" + "new Option" + stateArray[i]);
	 	  }
	 	  if ( navigator.appName == 'Netscape') 
	 	  {
	           if (parseInt(navigator.appVersion) < 4)
		  	   {
	 	            window.history.go(0)
	 	  	   }
	 	  	   else 
		  	   {    	
   		            if (navigator.platform == 'Win32' || navigator.platform == 'Win16') 
		  	   		{
		                 window.history.go(0)
          	   		}
      	       }
      	  }
     }
	 else 
	 {
     }  
     if (selected == 'Other') 
	 {
          newProvince = "";
		  while (newProvince == "")
		  {
		       newProvince=prompt ("Please enter the name of your country.", "");
		  }
		  if (newProvince != null) 
		  {
		       inForm.sl_Province.options[(inForm.sl_Province.options.length-1)]=new Option(newProvince,newProvince,true,true);
			   inForm.sl_Province.options[inForm.sl_Province.options.length]=new Option('Other, not listed','Other');
   		  }
     }
     if(inForm.sl_Province.options[0].text == 'Select Province') 
	 {
	      inForm.sl_Province.options[0]= null;
     }
}

