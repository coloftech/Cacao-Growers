/*  convert tab to panel for mobile view */

$.fn.tabToPanel = function() 
{

  var element = '#'+$(this).attr('id');
   if (window.matchMedia("(max-width: 768px)").matches) {
  var concat = '';
    obj_tabs = $( element + " li" ).toArray();
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
    $(element).remove();
    $(".tab-content").remove();
  } 
  
}


/* get check checkboxes */
$.fn.getchecked = function(){

         var newdata = [];
         for (i = 0; i < this.length; i++) {
          if (this[i].checked) {

            newdata.push(this[i].value)
          }
        }
        return newdata;

   }
    
/* convert from inputinto array associate*/
$.fn.serializeAssoc = function() {
  var data = {};
  var string;
  $.each( this.serializeArray(), function( key, obj ) {
    var a = obj.name.match(/(.*?)\[(.*?)\]/);

    string = $.trim(obj.value);

    if(a !== null)
    {
      var subName = a[1];
      var subKey = a[2];

      if( !data[subName] ) {
        data[subName] = [ ];
      }

      if (!subKey.length) {
        subKey = data[subName].length;
      }

      if( data[subName][subKey] ) {
        if( $.isArray( data[subName][subKey] ) ) {

          data[subName][subKey].push( string );

        } else {
          data[subName][subKey] = [ ];

          data[subName][subKey].push( string );

        }
      } else {
        data[subName][subKey] = string;
      }
    } else {
      if( data[obj.name] ) {
        if( $.isArray( data[obj.name] ) ) {
          data[obj.name].push( string );
        } else {
          data[obj.name] = [ ];
          data[obj.name].push( string );
        }
      } else {
        data[obj.name] = string;
      }
    }
  });
  return data;
};

$.fn.serializeObject = function() {
    var data = {};
    $.each( this.serializeArray(), function( key, obj ) {
        var a = obj.name.match(/(.*?)\[(.*?)\]/);
        if(a !== null)
        {
            var subName = new String(a[1]);
            var subKey = new String(a[2]);
            if( !data[subName] ) {
              data[subName] = { };
              data[subName].length = 0;
            };
            if (!subKey.length) {
                subKey = data[subName].length;
            }
            if( data[subName][subKey] ) {
              if( $.isArray( data[subName][subKey] ) ) {
                data[subName][subKey].push( obj.value );
              } else {
                data[subName][subKey] = { };
                data[subName][subKey].push( obj.value );
              };
            } else {
                data[subName][subKey] = obj.value;
            };
            data[subName].length++;
        } else {
            var keyName = new String(obj.name);
            if( data[keyName] ) {
                if( $.isArray( data[keyName] ) ) {
                    data[keyName].push( obj.value );
                } else {
                    data[keyName] = { };
                    data[keyName].push( obj.value );
                };
            } else {
                data[keyName] = obj.value;
            };
        };
    });
    return data;
};



function focusNextElement() {
      var focussableElements = 'a:not([disabled]), button:not([disabled]), input[type=text]:not([disabled]), [tabindex]:not([disabled]):not([tabindex="-1"])';
      if (document.activeElement && document.activeElement.form) {
        var focussable = Array.prototype.filter.call(document.activeElement.form.querySelectorAll(focussableElements),
          function(element) {
            return element.offsetWidth > 0 || element.offsetHeight > 0 || element === document.activeElement
          });
        var index = focussable.indexOf(document.activeElement);
        
        focussable[index + 1].focus();
       
      }
    }

    window.addEventListener('keydown', function(e) {
      if (e.keyIdentifier == 'U+000A' || e.keyIdentifier == 'Enter' || e.keyCode == 13) {
                
             if(e.target.type === 'text' || e.target.type === 'email' || e.target.type === 'number' || e.target.type === 'password' || e.target.nodeName === 'select'  || e.target.type === 'checkbox'  || e.target.type === 'radio'    ) {
              e.preventDefault();
              focusNextElement();
              return false;
            
          }
        
      }
    }, true);

