$.fn.mobileView = function() 
{
   if (window.matchMedia("(min-width: 7680px)").matches) {
  
  var concat = '';
		obj_tabs = $( this + " li" ).toArray();
		obj_cont = $( ".tab-content .tab-pane" ).toArray();
		jQuery.each( obj_tabs, function( n, val ) 
		{
			concat += '<div id="' + n + '" class="panel panel-default">';
			concat += '<div class="panel-heading" style="padding:0;" role="tab" id="heading' + n + '">';
			concat += '<h4 class="panel-title"  style="padding:0;"><a  class="btn btn-block" style="text-align:left;padding:10px;" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapse' + n + '" aria-expanded="false" aria-controls="collapse' + n + '">' + val.innerText + '</a></h4>';
			concat += '</div>';
			concat += '<div id="collapse' + n + '" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading' + n + '">';
			concat += '<div class="panel-body">' + obj_cont[n].innerHTML + '</div>';
			concat += '</div>';
			concat += '</div>';
		});
		$("#accordion").html(concat);
		$("#accordion").find('.panel-collapse:first').addClass("in");
		$("#accordion").find('.panel-title a:first').attr("aria-expanded","true");
		$(this).remove();
		$(".tab-content").remove();
	} 
	
}