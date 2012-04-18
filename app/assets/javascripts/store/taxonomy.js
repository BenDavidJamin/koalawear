(function($){
  $(document).ready(function(){
    $("ul.taxons-list").hide();
    
    $("h6").hover(
          function () {
            $(this).next("ul").show("slow");
            }
    );
  });
})(jQuery);