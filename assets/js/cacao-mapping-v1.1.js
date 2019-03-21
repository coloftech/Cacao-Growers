var tbody = $('#tableDetails tbody');
var table = $('#tableDetails');
  var activeIcon = {
    url: 'http://maps.google.com/mapfiles/ms/micons/yellow.png'
  };
  var normalIcon = {
    url: "http://maps.google.com/mapfiles/ms/micons/blue.png"
  };
  var barangayicon = {
    url: base_url+"/public/img/barangayicon20x20.png"
  };

$(function(){
	$(table).dataTable({		
        "lengthMenu": [[25, 50, 100, -1], [25, 50, 100, "All"]]
	});
})



		function getrespondents(city_code){
			if ($.fn.DataTable.isDataTable("#tableDetails")) {
 				 $(table).DataTable().clear().destroy();
				}


			$.ajax({
				url:site_url+'mapping/getrespondents',
				type:'post',
				dataType: 'json',
				data:'action='+true+'&city_code='+city_code,
				beforeSend: function(){

                $('.loading').removeClass('hidden');

            	},
				success: function(result){

					if (result.status == true) {
						notify('success','Details generated');
						tbody.empty();
						$.each(result.details,function(i,d){
							table.append('<tr>'+
								'<td>'+d.fname+' '+d.lname+'</td>'+
								'<td>'+d.address+'</td>'+
								'<td>'+d.farming_category+'</td>'+
								'</tr>');
						});

						$(table).dataTable();

						markbarangays(result.details);
					}else{
						notify('warning','No details generated')
					}
				},
              	error: function (request, status, error) {
                console.log(request.responseText);
            	},
            	complete: function(){

                $('.loading').addClass('hidden');

				$('#tableDetails').DataTable();

            	}
			});
		}
  
				var address = document.getElementById('address').innerHTML;
				address = JSON.parse(address);

				/*var address = [
					{id:1,name:'bilar',location:'bilar, bohol, Philippines'},
					{id:2,name:'carmen',location:'carmen, bohol, Philippines'},
					{id:3,name:'loboc',location:'loboc, bohol, Philippines'},
					{id:4,name:'batuan',location:'batuan, bohol, Philippines'},
					{id:5,name:'Zamora bilar',location:'zamora, bilar, bohol, Philippines'},
					];*/
				var map,
					geocoder;

	function loadMap() {
				var bohol = new google.maps.LatLng(9.83330, 124.166660);

				map = new google.maps.Map(
				      document.getElementById('map'), {
				      	zoom: 10, 
				      	center: bohol
				      });


				  geocoder = new google.maps.Geocoder();
				 addmarker(address);
			}

  				var markers = [];
			function addmarker(cdata){
				var	infowindow =  new google.maps.InfoWindow;

				  Array.prototype.forEach.call(cdata,function(i,n){


					var point = [];
				  	geocoder.geocode({
				  		'address': i.location
				  	}, function(result,status){
				  		if (status == 'OK') {
				  			map.setCenter(result[0].geometry.location);
				  			point.id = i.id
				  			point.lat = map.getCenter().lat();
				  			point.lng = map.getCenter().lng();

				  			address[n].lat = point.lat;
				  			address[n].lng = point.lng;

				  		var content = document.createElement('div');
				  		var strong = document.createElement('strong');
				  			strong.textContent = i.location;

				  		var a = document.createElement('a');
				  			a.href = 'http://phlab.tech';
				  			a.target = '_blank';
				  			a.title = 'Click for more info';
				  			a.appendChild(strong);
				  			content.appendChild(a);


						var mark = new google.maps.LatLng(point.lat, point.lng);					
					  	var	marker = new google.maps.Marker({
					  		position: mark, 
					  		map: map,
					  		icon: normalIcon
					  	});
    					markers.push(marker);

					  	marker.addListener('click', function(){
					  		infowindow.setContent(content);
					  		infowindow.open(map,marker);
					  		$('#modalmap').modal('show');
					  		$('#modalmap .modal-title').html(i.location.toUpperCase());
					  		$('#modalmap #modalLatLng').html('Latitude: '+point.lat+'<br/>'+'Longitude: '+point.lng);

					  		$('#modalmap #details').html($('<div/>').addClass('respondents').append('Cacao farmers: '+i.respondents));
					  		getrespondents(i.id);

					        for (var j = 0; j < markers.length; j++) {
					          markers[j].setIcon(normalIcon);
					        }
					        this.setIcon(activeIcon);
					        clearMarkers();
					  		
					  	})

				  		}
				  	})
				  });

			}
			     function clearMarkers() {
        			setMapOnAll(null);
     			}
     			function setMapOnAll(map) {
				        for (var i = 0; i < marker2.length; i++) {
				          marker2[i].setMap(map);
				        }
				  }

				  var marker2 = [];
				

				function markbarangays(data) {
				  	// body...
				  	//console.log(data);

				var	infowindow =  new google.maps.InfoWindow;
				  geocoder = new google.maps.Geocoder();

				  Array.prototype.forEach.call(data,function(i,n){


					var point = [];
				  	geocoder.geocode({
				  		'address': i.address
				  	}, function(result,status){
				  		if (status == 'OK') {

				  			map.setCenter(result[0].geometry.location);
				  			point.id = i.id
				  			point.lat = map.getCenter().lat();
				  			point.lng = map.getCenter().lng();



						var mark = new google.maps.LatLng(point.lat, point.lng);					
					  	var	marker = new google.maps.Marker({
					  		position: mark, 
					  		map: map,
					  		icon: barangayicon
					  	});
					  	marker2.push(marker);

					  	marker.addListener('click', function(){
					  		infowindow.setContent(i.address);
					  		infowindow.open(map,marker);

					  		
					  	})

				  		}
				  	})
				  });

				  }
		
