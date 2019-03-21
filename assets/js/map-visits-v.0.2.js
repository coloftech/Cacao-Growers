$(function () {

    /* jVector Maps
       * ------------
       * Create a world map with markers
       */
  var currentmarkers = [];
  $.each(visitors,function(i,x){

      $.each(jvmCountries,function(i,v){
        //console.log(v);
        if(i === x.country){
         // console.log(i);
         currentmarkers.push({latLng: v.coords, name: v.name + ' (' + x.counter + ') ' ,style: {fill: 'red',stroke: 'none'}})

        }
      });
  });
  var displaymarkers = currentmarkers.slice();
  
      $('#world-map-markers').vectorMap({
        map              : 'world_mill_en',
        normalizeFunction: 'polynomial',
        hoverOpacity     : 0.7,
        hoverColor       : false,
        backgroundColor  : '#00BFFF',
        regionStyle      : {
          initial      : {
            fill            : '#7CFC00',
            'fill-opacity'  : 1,
            stroke          : 'none',
            'stroke-width'  : 0,
            'stroke-opacity': 1
          },
          hover        : {
            'fill-opacity': 0.7,
            cursor        : 'pointer',
            fill: 'yellow'
          },
          selected     : {
            fill: 'yellow'
          },
          selectedHover: {}
        },
        markerStyle      : {
          initial: {
            fill  : '#00a65a',
            stroke: '#111'
          }
        },
        markers          : 

            displaymarkers

          
      });



  });