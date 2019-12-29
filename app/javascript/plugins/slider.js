import rangeSlider from 'ion-rangeslider';
import 'ion-rangeslider/css/ion.rangeSlider.min.css';

const initSliders = () => {
  if (document.querySelector('#price-slider')) {
    $("#price-slider").ionRangeSlider({
        type: 'single',
        skin: "round",
        min: 20,
        max: 250,
        from: 50,
        prefix: "$"
    });
  }
  if (document.querySelector('#duration-slider')) {
    $("#duration-slider").ionRangeSlider({
        type: 'single',
        skin: "round",
        min: .5,
        max: 10,
        from: 2,
        step: .5,
        postfix: " hours"
    });
  }
}
export { initSliders };
