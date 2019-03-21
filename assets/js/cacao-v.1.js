


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
  $.each( this.serializeArray(), function( key, obj ) {
    var a = obj.name.match(/(.*?)\[(.*?)\]/);
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
          data[subName][subKey].push( obj.value );
        } else {
          data[subName][subKey] = [ ];
          data[subName][subKey].push( obj.value );
        }
      } else {
        data[subName][subKey] = obj.value;
      }
    } else {
      if( data[obj.name] ) {
        if( $.isArray( data[obj.name] ) ) {
          data[obj.name].push( obj.value );
        } else {
          data[obj.name] = [ ];
          data[obj.name].push( obj.value );
        }
      } else {
        data[obj.name] = obj.value;
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



