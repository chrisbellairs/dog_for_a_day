import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('user_address');
  if (addressInput) {
    console.log('running');
    places({ container: addressInput });
  }
};

export { initAutocomplete };
