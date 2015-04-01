$(function(){
  loadMap();
  getLocation()
});

function loadMap() {
  $('#form').val('');
  $( "#user-map" ).html('<div id="map"></div>');
  var map = L.map('map').setView([37.786799, -122.407396], 11);
  L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
    maxZoom: 18,
    attribution:
    'Imagery © <a href="http://mapbox.com">Mapbox</a>',
    id: 'johnlin1214.k6j58jol'
  }).addTo(map);
  $.ajax({
    dataType: "json",
    url: 'http://localhost:3000/',
    type: 'GET'
  }).done(function(server_data) {
    server_data.forEach(function(user) {
      var latitude =  parseFloat(user.lat);
      var longitude =  parseFloat(user.lng);
      var userMessage = user.message;
      var marker =  L.marker([latitude, longitude], {color: '#03f'}).addTo(map)
      .bindPopup("<center>" + userMessage +"</center>").openPopup();
    });
  }).fail(function(){alert("Unable to find server data");});
}

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
      showPosition
      );
  }
}

function showPosition(position) {
  $('#shout_lat').val(position.coords.latitude);
  $('#shout_lng').val(position.coords.longitude);
  console.log(position.coords.accuracy)
}
