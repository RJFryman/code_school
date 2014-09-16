// HTML

<div class="tour" data-daily-price="357">
  <h2>Paris, France Tour</h2>
  <p>$<span id="total">2,499</span> for <span id="nights-count">7</span> Nights</p>
  <p>
    <label for="nights">Number of Nights</label>
  </p>
  <p>
    <input type="number" id="nights" value="7">
  </p>
</div>

// application.js
// Before

$(document).ready(function() {
  $("#nights").on("keyup", function() {
    $("#nights-count").text($(this).val());
  });
});

// After

$(document).ready(function(){
  $('#nights').on('keyup',function(){
    var nights=+$(this).val();
    var dailyPrice=+$(this).closest('.tour').data('daily-price');
    $('#total').text(nights*dailyPrice);
    $('#nights-count').text($(this).val());
  });
});
