# Before

function initialize() {
  $('#alert_resolved').click(clickAlert);
}

$(document).ready(initialize);
$(document).on('page:load', initialize);

# After

$(document).on('click','#alert_resolved', clickAlert);
