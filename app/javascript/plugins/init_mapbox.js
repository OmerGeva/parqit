import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const fitMapToMarkers = (map, markers, defaultLongitude, defaultLatitude) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ defaultLongitude, defaultLatitude ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      if (marker.available === true) {
        new mapboxgl.Marker()
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(map);
      }
      });
    let defaultLatitude = 0
    let defaultLongitude = 0
    navigator.geolocation.getCurrentPosition((data) => {
      defaultLatitude = data.coords.latitude
      defaultLongitude = data.coords.longitude
      fitMapToMarkers(map, markers, defaultLongitude, defaultLatitude);
    });
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                          mapboxgl: mapboxgl }));
  }
};


export { initMapbox };
