// NOTE: If you run this file locally
// You will not get a server status
// You can comment out lines 9 and 26 to make it work locally

var xhr = new XMLHttpRequest();                 // Create XMLHttpRequest object

xhr.onload = function() {                       // When readystate changes
  // The following conditional check will not work locally - only on a server
  if(xhr.status === 200) {                      // If server status was ok
    responseObject = JSON.parse(xhr.responseText);

    // BUILD UP STRING WITH NEW CONTENT (could also use DOM manipulation)
    var newContent = '';
    for (var i = 0; i < responseObject.length; i++) { // Loop through object
      newContent += '<div class="event">';
      newContent += '<img src="' + responseObject[i].map + '" ';
      newContent += 'alt="' + responseObject[i].location + '" />';
      newContent += '<p><b>' + responseObject[i].location + '</b><br>';
      newContent += responseObject[i].date + '</p>';
      newContent += '</div>';
    }

    // Update the page with the new content
    document.getElementById('content').innerHTML = newContent;

  }
};

xhr.open('GET', '/data/data.json', true);        // Prepare the request
xhr.send(null);                                 // Send the request
