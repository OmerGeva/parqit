import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr(".datepicker", {
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
