$(document).ready(function(){
    var map = new GMap2(document.getElementById('map'));
    var center = new GLatLng(41.484807,-81.704174);
    map.setCenter(center, 15);
    map.addControl(new GLargeMapControl());
    markers = [];
    markLocations(map, places);
});

function markLocations(map, locations){
    for (var i = 0; i < locations.length; i++) {
        var latlng = new GLatLng(locations[i].location.location.lat, locations[i].location.location.lng)
        marker = createMarker(latlng, locations[i])
        markers.push(marker);
        map.addOverlay(marker);
    }
}

function createMarker(latlng, place) {
    var marker = new GMarker(latlng);
    var location_html="<strong>"+place.location.location.name+"</strong><br />"+place.location.location.address;
    var people_html= "";
    for (var i = 0; i < place.visitors.length; i++){
        people_html += place.visitors[i].person.name + "<br/>";
    }
    GEvent.addListener(marker,"click", function() {
      var infoTabs = [
          new GInfoWindowTab("Location", location_html),
          new GInfoWindowTab("Who's Here?", people_html)
      ]
      marker.openInfoWindowTabsHtml(infoTabs,{selectedTab:0, maxWidth:300})
    });
    marker.location_id = place.location.location.id
    return marker;
}