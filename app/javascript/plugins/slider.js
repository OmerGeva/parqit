import rangeSlider from 'ion-rangeslider';
import 'ion-rangeslider/css/ion.rangeSlider.min.css';

const initSliders = () => {
  if (document.querySelector('#price-slider')) {
    $("#price-slider").ionRangeSlider({
        type: 'single',
        min: 20,
        max: 250,
        from: 50
    });
  }
}
export { initSliders };
