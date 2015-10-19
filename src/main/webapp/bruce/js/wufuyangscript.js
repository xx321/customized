$(document).ready(function () {

//2頁 上下一步控制  
  $('#img_wrapper').hide();
  $(".choose").click(function () {
     $('#img_wrapper').show();
     $('#sm_wrapper2').hide();
  });
  $(".clean").click(function () {
     $('#img_wrapper').hide();
     $('#sm_wrapper2').show();
     return false;
  });
 //6頁 上下一步控制  
  $('#img_wrapper6').hide();
  $(".choose2").click(function () {
     $('#img_wrapper6').show();
     $('#sm_wrapper6').hide();
  });
 //4頁 radio 選擇
  $(".icon").click(function() {
     $('#sm_sidebar4-2-1').hide();
     $('#sm_sidebar4-2-2').show();
  });
  $(".text").click(function() {
     $('#sm_sidebar4-2-1').show();
     $('#sm_sidebar4-2-2').hide();
  });
  $(".icon-text").click(function() {
     $('#sm_sidebar4-2-1').show();
     $('#sm_sidebar4-2-2').show();
  });
 //4頁 文字部份
     $(".black").click(function() {
      $(".insert_text").css("color","#000");
   });
     $(".white").click(function() {
      $(".insert_text").css("color","#CCC");
   });
     $(".primary").click(function() {
      $(".insert_text").css("color","#337ab7");
   });
     $(".success").click(function() {
      $(".insert_text").css("color","#5cb85c");
   });
     $(".info").click(function() {
      $(".insert_text").css("color","#5bc0de");
   });
     $(".warning").click(function() {
      $(".insert_text").css("color","#f0ad4e");
   });
     $(".danger").click(function() {
      $(".insert_text").css("color","#d9534f");
   });
     $(".Arial").click(function() {
      $(".insert_text").css("font-family","Arial");
      $(".dropdown-toggle").text("Arial");
   });
     $(".Century").click(function() {
      $(".insert_text").css("font-family","Century");
      $(".dropdown-toggle").text("Century");
   });
   //3頁 分頁
    var obj = $(".color").find("button");
    var divsize = obj.size(); //數據條數
    var perpage = 10;  //每頁條數
    var sumpage = Math.ceil(divsize/perpage); //總頁數 
    var i = 1;  //默認第一頁
    obj.hide();
    obj.slice(0,perpage).show();
    //上一頁
    $("li.color").click(function(){
    $( "li.color" ).removeClass( "active" );
    $(this).addClass('active');
    });
    
    $("#prev").click(function(){      
      --i;
      if(i<=0)
      {
        i = 1;
        return false;
      }
      obj.hide();
      obj.slice(i*perpage-perpage,i*perpage).show();  
    });
    //下一頁
    $("#next").click(function(){      
      if(i>=sumpage)
      {
        i = sumpage;
        return false;
      }
      obj.hide();
      obj.slice(i*perpage,i*perpage+perpage).show();
      ++i;
    });
});