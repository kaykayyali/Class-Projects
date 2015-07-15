if ("geolocation" in navigator) {
  addEventListeners();
} else {
  alert("Geolocation is not available")
}
var locations = []
function addEventListeners() {
  var saveButton = document.getElementById('save-location');
  saveButton.addEventListener('click', getLocation);
  var showButton = document.getElementById('show-locations');
  showButton.addEventListener('click', showLocations);
  var clearButton = document.getElementById('clear-locations');
  clearButton.addEventListener('click', clearLocations);
}

function getLocation() {
  console.log("getting your location")
  // you know how to do geoloation already, right??
  // in the success handler, save the location in local storage
  navigator.geolocation.getCurrentPosition(onLocation, onError);

  function onLocation (position) {
    console.log('Your latitude is ' + position.coords.latitude);
    console.log('Your longitude is ' + position.coords.longitude);
    // document.getElementById('position').innerHTML = 'Lat: ' +
    var latitudePos = position.coords.latitude.toString()
    var longitudePos = position.coords.longitude.toString()
    var position = {
      latitude: latitudePos,
      longitude: longitudePos,
      timeStamp: Date()
    }
    locations.push(position);
    window.sessionStorage.setItem("position", JSON.stringify(locations));
    console.log(JSON.parse(window.sessionStorage.getItem('position')))
 


  }
  function onError(error) {
    console.log(error);
  }
}

function showLocations() {
  console.log("showing locations")
  // retrieve the locations from local storage and add them to the DOM
  data = JSON.parse(window.sessionStorage.getItem('position'))
    data.forEach(function(position) {
      var line1 = "<li>" + position.timeStamp
      var line2 = "<ul>"
      var line3 = "Latitude: " + position.latitude + "<br>"
      var line4 = "Longitude: " + position.longitude
      var line5 ='</ul>'
      var line6 = "<img src='https://maps.googleapis.com/maps/api/staticmap?center="+ position.latitude+","+ position.longitude+"&zoom=14&size=400x400'>"
      var line7 = '</li>'
      var string = line1 + line2 + line3 + line4 + line5 + line6 + line7

      $('#location-list').append(string)
    });
}

function clearLocations() {  
  locations = []
  console.log('All cleared!')
  window.sessionStorage.setItem("position", JSON.stringify(locations));
  console.log(JSON.parse(window.sessionStorage.getItem('position')))
  $('#location-list').empty();
  
  // remove the locations from local storage
}