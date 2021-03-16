const showPosition = (geoPosition) => {
  console.log(geoPosition.coords.latitude, geoPosition.coords.longitude);
  window.location.href = `?latitude=${geoPosition.coords.latitude}&longitude=${geoPosition.coords.longitude}`;
}
const initGeolocateBtn = () => {
  const geolocateBtn = document.getElementById('js-geolocate-btn');
  const map = document.getElementById('map');
  const loader = document.querySelector('.loader');
  if (geolocateBtn) {
    geolocateBtn.addEventListener('click', (event) => {
      map.classList.toggle('d-none');
      loader.classList.toggle('d-none');
      navigator.geolocation.getCurrentPosition(showPosition);
    })
  }
}
export { initGeolocateBtn };