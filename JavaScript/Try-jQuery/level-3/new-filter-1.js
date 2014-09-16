// HTML

<div id="all-tours">
  <h1>Guided Tours</h1>
  <ul>
    <li class="usa tour on-sale" data-discount="299">
      <h2>New York, New York</h2>
      <span class="details">$1,899 for 7 nights</span>
      <button class="book">Book Now</button>
    </li>
    <li class="europe tour on-sale" data-discount="176">
      <h2>Paris, France</h2>
      <span class="details">$2,299 for 7 nights</span>
      <button class="book">Book Now</button>
    </li>
    <li class="asia tour" data-discount="349">
      <h2>Tokyo, Japan</h2>
      <span class="details">$3,799 for 7 nights</span>
      <button class="book">Book Now</button>
    </li>
  </ul>
  <ul id="filters">
    <li><button class="on-sale">On Sale</button></li>
  </ul>
</div>

// application.js
// Before

$(document).ready(function(){
  //Create the click handler here

});

// After

$(document).ready(function(){
  $('#filters').on('click','.on-sale',function(){});
}); 
