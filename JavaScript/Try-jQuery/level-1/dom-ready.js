// HTML

<div class="homepage-wrapper">
  <h2>Welcome to jQuery Travels - Traversing the DOM since 2006</h2>
  <p>Fly to New York today for as little as <span>$100</span></p>
</div>

// application.js

$(document).ready(function(){
  $("span").text("$100");
});
