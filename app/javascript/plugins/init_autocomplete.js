import places from 'places.js';

const initAddressAutocomplete = () => {
  const addressInput = document.querySelector('.mapboxgl-ctrl-geocoder--input');
  if (addressInput){
    document.querySelector('.suggestions-wrapper').style = "display: none;";
    places({ container: addressInput });
  }
};

export { initAddressAutocomplete };
