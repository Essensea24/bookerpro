// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require moment
//= require_tree .

google.maps.event.addDomListener(window, 'load', initialize_my_map)
google.maps.event.addDomListener(window, 'page:load', initialize_my_map)

function initialize_my_map() {

	
    console.log (window.location.origin)
    console.log (window.location.pathname)
    var url = window.location.origin + window.location.pathname + ".json" +  window.location.search 
    $.get(url, function(results){

		var map=new google.maps.Map(document.getElementById("google-map"), mapProp);
		
		var mapProp = {
	    	zoom: 10,
	    	maxZoom: 17,
	    	mapTypeId:google.maps.MapTypeId.ROADMAP
	  	};

	  	var bounds = new google.maps.LatLngBounds()
		
		var infowindow = new google.maps.InfoWindow();
	 
		var markers = []

        for (i = 0; i < results.length; i++) {
			var markerPosition = new google.maps.LatLng(results[i]['latitude'], results[i]['longitude'])
            var marker = new google.maps.Marker({
            	position: markerPosition
                })
	        marker.setMap(map)
	        bounds.extend(markerPosition);
			map.fitBounds(bounds);
	       	markers.push(marker)
	       	marker.content = "abc"
	       	google.maps.event.addListener(marker, 'click', function(marker) {
	            infowindow.setContent(marker.content);
	            infowindow.open(map, marker);
	        });
        }
	    (marker, i);
	})


}

