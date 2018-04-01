$(document).ready(function(){ 
  if($("#imgs").width() > 1080){ 
    $("#imgs").attr("width", 1080); 
  } 
  if($('.neirong').find('img')){ 
    $('.neirong').find('img').each(function(index, element){ 
      if($(this).width() > 1080){ 
        $(this).attr("width", 1080); 
      } 
    }); 
  } 
}); 