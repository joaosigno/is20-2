
//คำนวนรายการที่1
function sl_Description1_onchange()
    {
        with (document.f_Sale)
            {
                it_Price1.value = arr_index[sl_Description1.selectedIndex];
                it_Reduce1.value = arr_reduce[sl_Description1.selectedIndex];
                it_Coupon_Discount1.value = arr_coupon_discount[sl_Description1.selectedIndex];
		cal_amount1();
		it_Qty1.value=1;
		it_Qty1.focus();  
		it_Qty1.select();
	    } 
    }
function cal_amount1()
    {
        with (document.f_Sale)
            {
		if (it_Price1.value !="" && it_Qty1.value != "")
		    {
   			it_Amount1.value = it_Qty1.value *  (it_Price1.value-it_Reduce1.value-it_Coupon_Discount1.value);
			cal_grandtotal();
		    }
		else
		    {
			it_Amount1.value = "";
			it_Qty1.value = "";
		    }
	    }
    }

//คำนวนรายการที่2
function sl_Description2_onchange()
    {
        with (document.f_Sale)
            {
                it_Price2.value = arr_index[sl_Description2.selectedIndex];
                it_Reduce2.value = arr_reduce[sl_Description2.selectedIndex];
                it_Coupon_Discount2.value = arr_coupon_discount[sl_Description2.selectedIndex];
		cal_amount2();
		it_Qty2.value=1;
		it_Qty2.focus();  
		it_Qty2.select();
	    } 
    }
function cal_amount2()
    {
        with (document.f_Sale)
            {
		if (it_Price2.value !="" && it_Qty2.value != "")
		    {
   			it_Amount2.value = it_Qty2.value *  (it_Price2.value-it_Reduce2.value-it_Coupon_Discount2.value);
			cal_grandtotal();
		    }
		else
		    {
			it_Amount2.value = "";
			it_Qty2.value = "";
		    }
	    }
    }

//คำนวนรายการที่3
function sl_Description3_onchange()
    {
        with (document.f_Sale)
            {
                it_Price3.value = arr_index[sl_Description3.selectedIndex];
                it_Reduce3.value = arr_reduce[sl_Description3.selectedIndex];
                it_Coupon_Discount3.value = arr_coupon_discount[sl_Description3.selectedIndex];
		cal_amount3();
		it_Qty3.value=1;
		it_Qty3.focus();  
		it_Qty3.select();
	    } 
    }
function cal_amount3()
    {
        with (document.f_Sale)
            {
		if (it_Price3.value !="" && it_Qty3.value != "")
		    {
   			it_Amount3.value = it_Qty3.value *  (it_Price3.value-it_Reduce3.value-it_Coupon_Discount3.value);
			cal_grandtotal();
		    }
		else
		    {
			it_Amount3.value = "";
			it_Qty3.value = "";
			cal_grandtotal();
		    }
	    }
    }

//คำนวนรายการที่4
function sl_Description4_onchange()
    {
        with (document.f_Sale)
            {
                it_Price4.value = arr_index[sl_Description4.selectedIndex];
                it_Reduce4.value = arr_reduce[sl_Description4.selectedIndex];
                it_Coupon_Discount4.value = arr_coupon_discount[sl_Description4.selectedIndex];
		cal_amount4();
		it_Qty4.value=1;
		it_Qty4.focus();  
		it_Qty4.select();
	    } 
    }
function cal_amount4()
    {
        with (document.f_Sale)
            {
		if (it_Price4.value !="" && it_Qty4.value != "")
		    {
   			it_Amount4.value = it_Qty4.value *  (it_Price4.value-it_Reduce4.value-it_Coupon_Discount4.value);
			cal_grandtotal();
		    }
		else
		    {
			it_Amount4.value = "";
			it_Qty4.value = "";
			cal_grandtotal();
		    }
	    }
    }

//คำนวนรายการที่5
function sl_Description5_onchange()
    {
        with (document.f_Sale)
            {
                it_Price5.value = arr_index[sl_Description5.selectedIndex];
                it_Reduce5.value = arr_reduce[sl_Description5.selectedIndex];
                it_Coupon_Discount5.value = arr_coupon_discount[sl_Description5.selectedIndex];
		cal_amount5();
		it_Qty5.value=1;
		it_Qty5.focus();  
		it_Qty5.select();
	    } 
    }
function cal_amount5()
    {
        with (document.f_Sale)
            {
		if (it_Price5.value !="" && it_Qty5.value != "")
		    {
   			it_Amount5.value = it_Qty5.value *  (it_Price5.value-it_Reduce5.value-it_Coupon_Discount5.value);
			cal_grandtotal();
		    }
		else
		    {
			it_Amount5.value = "";
			it_Qty5.value = "";
			cal_grandtotal();
		    }
	    }
    }

//คำนวนรายการที่6
function sl_Description6_onchange()
    {
        with (document.f_Sale)
            {
                it_Price6.value = arr_index[sl_Description6.selectedIndex];
                it_Reduce6.value = arr_reduce[sl_Description6.selectedIndex];
                it_Coupon_Discount6.value = arr_coupon_discount[sl_Description6.selectedIndex];
		cal_amount6();
		it_Qty6.value=1;
		it_Qty6.focus();  
		it_Qty6.select();
	    } 
    }
function cal_amount6()
    {
        with (document.f_Sale)
            {
		if (it_Price6.value !="" && it_Qty6.value != "")
		    {
   			it_Amount6.value = it_Qty6.value *  (it_Price6.value-it_Reduce6.value-it_Coupon_Discount6.value);
			cal_grandtotal();
		    }
		else
		    {
			it_Amount6.value = "";
			it_Qty6.value = "";
			cal_grandtotal();
		    }
	    }
    }

//หาผลรวมของราคาสินค้าทั้งหมด
function cal_grandtotal()
    {
	with (document.f_Sale)
	    {
		it_Grand_Total.value = it_Amount1.value * 1 + it_Amount2.value * 1 + it_Amount3.value * 1 + it_Amount4.value * 1 + it_Amount5.value * 1 + it_Amount6.value * 1;
		it_Vat.value = it_Grand_Total.value * 7 / 107;
		it_Sub_Total.value = it_Grand_Total.value - it_Vat.value;
            }
    }


	