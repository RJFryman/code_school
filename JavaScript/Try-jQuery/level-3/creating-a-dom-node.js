// HTML

<div id="tours">
  <h1>Guided Tours</h1>
  <ul>
    <li class="usa tour">
      <h2>New York, New York</h2>
      <span class="details">$1,899 for 7 nights</span>
      <button class="book">Book Now</button>
    </li>
  </ul>
</div>

// application.js
// Before

var message = $("");

// After

var message = $('<span>1-555-jquery-air</span>');
