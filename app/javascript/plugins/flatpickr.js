import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"


let dates = []
if(document.querySelector('.datepicker') && document.querySelector('.datepicker').dataset.bookings.match(/\d{4}-\d{2}-\d{2}/g)){
  dates = document.querySelector('.datepicker').dataset.bookings.match(/\d{4}-\d{2}-\d{2}/g).map((date) => {
    return `${date}`
  });
}
flatpickr(".datepicker", {
  disable: dates,
  minDate: "today",
  disableMobile: "true"
})
flatpickr(".start_time", {
  disableMobile: "true",
  enableTime: true,
  noCalendar: true,
  dateFormat: "H:i"
})
flatpickr(".end_time", {
  disableMobile: "true",
  enableTime: true,
  noCalendar: true,
  dateFormat: "H:i"
})
