import flatpickr from "flatpickr";
require("flatpickr/dist/themes/dark.css");

const dynamicCalendar = () => {
  const calendar = document.querySelector("#booking_date_of_arrival")
  if (calendar == null)
    return

  const calendarForm = document.querySelector("#calendar-form")
  const monumentBookedDates = JSON.parse(calendarForm.dataset.dates)

  flatpickr(calendar, {
    minDate: "today",
    disable: monumentBookedDates
  })
}

export default dynamicCalendar;
