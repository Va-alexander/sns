$(document).ready(function(){
						   
	
	    $("ul.menu li").each(function()         
          {
        $(this).mouseenter(function(){
			if(!$(".nav").is(":visible"))
			{
            	$(".nav").slideDown("slow");
			}

});


});

$(".navigation").mouseleave(function(){
if($(".nav").is(":visible"))
{
$(".nav").slideUp("slow");
}
});


$("a").each(function(i){
if($(this).attr("href").indexOf("home.html") != -1){
	$(this).attr("href","/");
}
})
});
