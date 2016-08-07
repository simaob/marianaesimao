$(function() {
  var mymap = L.map('map').setView([41.1579440, -8.629], 13);

  L.tileLayer('http://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png', {
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, &copy; <a href="https://cartodb.com/attributions">CartoDB</a>',
    maxZoom: 18
  }).addTo(mymap);

});
