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

//= require moment
//= require_tree .
// 


$(document).ready(function() {
	$("#testing").show();
	$("#links a").tosrus();
});

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


	 	CustomMarker.prototype.draw = function() {
	
			var self = this;
			
			var div = this.div;
			
			
			if (!div) {
			
				div = this.div = document.createElement('div');
				div2 = this.div2 = document.createElement('div');
				
				div.className = 'marker';
				div2.className = 'marker2';
				
				div.style.position = 'absolute';
				div.style.cursor = 'pointer';
				div.style.width = '30px';
				div.style.height = '20px';
				div.style.background = '#e60';
				div.innerHTML = innertext

				
				div2.style.position = 'absolute';
				div2.style.cursor = 'pointer';
				div2.style.background = '#e60';
				div2.style.width = '0px';
				div2.style.height= '0px';
				div2.style.borderStyle= 'solid';
				div2.style.borderWidth= '3px 2.5px 0 2.5px';
				div2.style.borderColor= '#00e35f transparent transparent transparent';
				
				
				if (typeof(self.args.marker_id) !== 'undefined') {
					div.dataset.marker_id = self.args.marker_id;

				}
				
				google.maps.event.addDomListener(div, "click", function(event) {			
					google.maps.event.trigger(self, "click");
				});
				
				var panes = this.getPanes();
				panes.overlayImage.appendChild(div);


			}
			
			var point = this.getProjection().fromLatLngToDivPixel(this.latlng);
			
			if (point) {
				div.style.left = (point.x - 15) + 'px';
				div.style.top = (point.y - 35) + 'px';
			}


		};
		var markers = []

        for (i = 0; i < results.length; i++) {
        	 
        	var innertext = results[i]['lowRate']
			var markerPosition = new google.maps.LatLng(results[i]['latitude'], results[i]['longitude'])
			console.log("Price: " + results[i]['lowRate'])

	        	var overlay = new CustomMarker(
					markerPosition, 
					map,
					innertext
					);
	        overlay.setMap(map)
	        bounds.extend(markerPosition);
			map.fitBounds(bounds);
	       	markers.push(overlay);
	       	google.maps.event.addListener(markers[i], 'click', function() {
	            infowindow.setContent(this.html);
	            infowindow.open(map, this);
	            
	        });
        }
	    (overlay, i);
	})

}

