
alert('document ready!');
var donation = {
  setupForm: function() {
    $('#new_donation').submit(function(event) {
      alert('form submitted(ish)');
      $('input[type=submit]').attr('disabled', true)
      donation.processCard()

      event.preventDefault();
    });
  },

  processCard: function() {
    alert('card processesing');
    var card = {
      number: $('#card_number').val(),
      cvc: $('#card_code').val(),
      expMonth: $('#card_month').val(),
      expYear: $('#card_year').val()
    }
    alert(card.number)

    Stripe.createToken(card, donation.handleStripeResponse)
  },

  handleStripeResponse: function(status, response) {
    alert('handling response');
    if(status == 200) {
      alert(response.id)
    } else {
      alert(status)
      alert(response.error.message)
    }
  }
};

Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'))
donation.setupForm()
