import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"


flatpickr("#range_start", {
  disableMobile: "true",
  enableTime: true,
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
})
