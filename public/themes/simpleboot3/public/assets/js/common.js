
// 灰色背景
function hasBackGray(){
    var navHeight=0,navPadTop=0,navPadBot=0;
    if($('body').children().hasClass('nav')){
        navHeight=$('.nav').height();
        var footH=$('.list-tip-div').height();
        navPadTop=$('.nav').css('padding-top').split('px')[0];
        navPadBot=$('.nav').css('padding-top').split('px')[0];
    }
    
    var winHeight=$(window).height();
    var hesBackHei= winHeight - navHeight  -navPadTop - navPadBot ;

    $('.hasBackGray').css('min-height', winHeight - navHeight  -navPadTop - navPadBot +footH +'px') 
}

function hasNav(){
    var navHeight=0,navPadTop=0,navPadBot=0;
    if($('body').children().hasClass('nav')){
        navHeight=$('.nav').height();
        navPadTop=$('.nav').css('padding-top').split('px')[0];
        navPadBot=$('.nav').css('padding-top').split('px')[0];
    }
    
    var winHeight=$(window).height();
    var hesBackHei= winHeight - navHeight  -navPadTop - navPadBot ;


    $('.hasNav').css('height', winHeight - navHeight  -navPadTop - navPadBot +'px') 
}
 // 滚动播放
 function ScrollImgLeft(){ 
    var speed=100; 
    var scroll_begin = document.getElementById("scroll_begin"); 
    var scroll_end = document.getElementById("scroll_end"); 
    var scroll_div = document.getElementById("scroll_div"); 
    scroll_end.innerHTML=scroll_begin.innerHTML; 
    function Marquee(){ 
        if(scroll_end.offsetWidth- scroll_div.scrollLeft<=4){ 
            scroll_div.scrollLeft-=scroll_begin.offsetWidth; 
        }else{ 
            scroll_div.scrollLeft++; 
        }
        //console.log(scroll_div.scrollLeft,scroll_end.offsetWidth-scroll_div.scrollLeft)
    } 
    var MyMar=setInterval(Marquee,speed); 
    // scroll_div.onmouseover=function() {clearInterval(MyMar);} 
    // scroll_div.onmouseout=function() {MyMar=setInterval(Marquee,speed);} 
} 

// 验证中文名称
function isChinaName(name) {
    var pattern = /^[\u4E00-\u9FA5]{1,6}$/;
    return pattern.test(name);
}

// 验证手机号
function isPhoneNo(phone) { 
    var pattern = /^1[34578]\d{9}$/; 
    return pattern.test(phone); 
}

//6位数字密码
function isPassword(password){
    var pattern=/^\d{6}$/;
    return pattern.test(password)
}

// 验证身份证 
function isCardNo(card) { 
    var pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
    return pattern.test(card); 
} 


//qq号
function isQq(qq){
    var pattern=/^\d{5,12}$/;
    return pattern.test(qq);
}

// 金额验证
function isMoney(money){
    var pattern=/^\d{1,12}$/;
    return  pattern.test(money);
}

//简单验证银行卡
function isBank(bank){
    var pattern=/(^\d{16}$)|(^\d{19}$)/
    return  pattern.test(bank);
}

// 失去焦点
$(function(){
    
    $('input[name="identity_name"]').blur(function(){
        if($.trim($('input[name="identity_name"]').val()) == '' || isChinaName($('input[name="identity_name"]').val()) == false){
    
            $('.error-tip').html('提示：请输入正确的用户名');
        
        }else{
            $('.error-tip').html('');
        }

    })
    $('input[name="identity_num"]').blur(function(){
        if($.trim($('input[name="identity_num"]').val()) == '' || isCardNo($('input[name="identity_num"]').val()) == false){
        
            $('.error-tip').html('提示：请输入正确的身份证号码');
    
        }else{
            $('.error-tip').html('');
        }
    })

    $('input[name="password"]').blur(function(){
        if($.trim($('input[name="password"]').val()) == '' || isPassword($('input[name="password"]').val()) == false){
        
            $('.error-tip').html('提示：请输入6位数字密码');

        }else{
            $('.error-tip').html('');
        }
    })

    $('input[name="password_repeat"]').blur(function(){
        if($.trim($('input[name="password_repeat"]').val()) == '' || isPassword($('input[name="password_repeat"]').val()) == false){
            
            $('.error-tip').html('提示：两次密码不一致');
    
        }else{
            $('.error-tip').html('');
        }
    })

    $('input[name="qq"]').blur(function(){
        if($.trim($('input[name="qq"]').val()) == '' || isQq($('input[name="qq"]').val()) == false){
        
            $('.error-tip').html('提示：请输入正确QQ号');
        
        }else{
            $('.error-tip').html('');
        }
    })

    $('input[name="tel"]').blur(function(){
        if($.trim($('input[name="tel"]').val()) == '' || isPhoneNo($('input[name="tel"]').val()) == false){
            
            $('.error-tip').html('提示：请输入正确手机号');
        
        }else{
            $('.error-tip').html('');
        }
    })

    $('input[name="borrowing_balance"]').blur(function(){
        if($.trim($('input[name="borrowing_balance"]').val())=='' || isMoney($.trim($('input[name="borrowing_balance"]').val()))=='false'){

            $('.error-tip ').html('提示：请输入正确金额');

        }else{

            $('.error-tip').html('');

        }
    })

    $('input[name="new_tel"]').blur(function(){
        if($.trim($('input[name="new_tel"]').val()) == '' ||   $.trim($('input[name="new_tel"]').val()) == $.trim($('input[name="tel"]').val())  ||  isPhoneNo($('input[name="new_tel"]').val()) == false){
    
            $('.error-tip').html('提示：请输入和原手机不同的手机号码');
            
            return false;
        }
    })
})

 // 紧急联系人收缩以及我的账单还款显示显示
 $('p.li-2nd').click(function(){
    if($(this).children().hasClass('icon_arr')){
        if($(this).siblings('.ul-2nd').css('display')=='none'){
            $('.ul-2nd').hide(600);
            $(this).addClass('active');
            $(this).siblings('.ul-2nd').show(600);
        }else{
            $(this).removeClass('active');
            $(this).siblings('.ul-2nd').hide(600);
        }
    }

})

// 选取或者是拍摄照片
$('.photos_div').click(function(){
    var inpuId=$(this).find('input').prop('id');
    clickInpt(inpuId)
 })

$(function() {
    $('.camera').change(function() {
        var siblingImg=$(this).siblings('img');
        var siblingLabel=$(this).siblings('label');
        var file = this.files[0];
        var r = new FileReader();
        r.readAsDataURL(file);
        $(r).load(function() {
            
            // par.html('<img src="' + this.result + '" alt="" />');
            siblingImg.attr('src',this.result )
            siblingLabel.css('z-index',-1 )
            $('#img-hidden').val(this.result)
        })
    })
})

function clickInpt(i){
    document.getElementById(i).click();
}  
// 结束选取或者是拍摄照片


// 验证码倒计时
var countdown=120; 
function settime(obj) { //发送验证码倒计时
    if (countdown == 0) { 
        obj.attr('disabled',false); 
        obj.text("获取验证码");
        countdown = 120; 
        return;
    } else { 
        obj.attr('disabled',true);
        obj.text("还剩(" + countdown + "s)");
        countdown--; 
        
    } 
    setTimeout(function() { settime(obj) },1000) 
}
// 结束验证码倒计时