function setInitialStatus() {
  var query = window.location.search.substring(1);
  var params = query.split('&');

  for (var i = 0; i < params.length; i++) {
    var pair = params[i].split('=');

    if (pair[1] === 'true') {
      $('#' + pair[0]).prop('checked', true);
      $('#label-' + pair[0]).text('Completed');
    }
  }
}

function updateStatus(post) {
  // update clicked checkbox
  var labelText = 'To do';

  if ($('#' + post).prop('checked')) {
    labelText = 'Completed';
  }

  $('#label-' + post).text(labelText);

  // update URL
  var checkboxes = $('input[type="checkbox"]:checked');
  var urlParams = [];

  for (var c = 0; c < checkboxes.length; c++) {
    urlParams.push(checkboxes[c].id + '=true');
  }

  var baseURL = [window.location.protocol, '//', window.location.host, window.location.pathname].join('');
  var queryString = urlParams.join('&');
  var finalURL = baseURL + '?' + queryString

  window.history.replaceState('', 'Guides Tracker', finalURL);
}

setInitialStatus();
