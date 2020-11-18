import flatpickr from "flatpickr";
require("flatpickr/dist/themes/dark.css");

const dynamicCalendar = () => {
  const calendar = document.querySelector("#booking_date_of_arrival")
  if (calendar == null)
    return
  flatpickr(calendar, {
    minDate: "today"
  })
}

export default dynamicCalendar;
