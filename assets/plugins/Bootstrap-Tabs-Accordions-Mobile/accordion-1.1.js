/* accordion.js */
var reloaded_pc = false;
var reloaded_mobi = false;
function getAccordion(element_id,screen) 
{
    $(window).resize(function () { 
    	if (/Mobi|Android/i.test(navigator.userAgent)) {
    			/* mobile!*/

			}else{
				if ($(window).width() < screen) 
				{
					alertify.confirm('Reload screen', 'Do you want to reload the screen? (click OK) will reset all your unsave data. ', function(){ 
						alertify.success('Ok') 
						location.reload();
					}, function(){
					 	alertify.error('Cancel')
					});

				}
			}
    });

	if ($(window).width() < screen) 
	{
		var concat = '';
		obj_tabs = $( element_id + " li" ).toArray();
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
		$(element_id).remove();
		$(".tab-content").remove();


	}	
}