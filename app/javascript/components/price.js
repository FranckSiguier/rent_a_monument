const priceCalcul = () => {
  const totalPrice = document.querySelector('#total_price');
  const durationOfStay = document.querySelector("#booking_date_of_arrival");
  const pricePerNight = document.querySelector('#price_per_night');


  if (totalPrice == null)
    return

  function changeCost( num , duration) {
    const cost = new Number( parseFloat( num ) * duration );
    return cost
  }

  durationOfStay.addEventListener('input', function(event) {
    const dates = durationOfStay.value.split('to')
    const date1 = new Date(dates[0]);
    const date2 = new Date(dates[1]);
    const duration = Math.floor((date2 - date1) / (1000*60*60*24))

      if ( !isNaN( duration ) ) {
        totalPrice.innerHTML = `${changeCost(pricePerNight.dataset.price, duration)} Million euros`;
      } else {
        totalPrice.innerHTML = `${pricePerNight.dataset.price} M / day`
      }
  })
}

export default priceCalcul;
