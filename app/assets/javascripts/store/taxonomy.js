(function($){
  $(document).ready(function(){
    $("ul.taxons-list").hide();
    
    $("a").hover(
          function () {
            $(this).parent("h6").next("ul").show("slow");
            var noHide = $(this).parent("h6").next("ul").children()[0];
            $("ul.taxons-list").each(function() {
                if($(this).children()[0] != noHide)
                   $(this).hide("slow");
                });
            }
    );
  });
})(jQuery);
