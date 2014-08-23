# Before

function initialize() {
  alert('Welcome, Deputy! Check back often for new zombie sightings!');
}

$(document).ready(initialize);

# After

function initialize() {
  alert('Welcome, Deputy! Check back often for new zombie sightings!');
}

$(document).ready(initialize);
$(document).on('page:load', initialize);
