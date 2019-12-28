import places from 'places.js';

const initAddressAutocomplete = () => {
  const addressInput = document.querySelector('.mapboxgl-ctrl-geocoder--input');
  document.querySelector('.suggestions-wrapper').style = "display: none;";
  places({ container: addressInput });
};

export { initAddressAutocomplete };
