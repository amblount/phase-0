// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements


//RELEASE 4: Event Listener
  // Add the code for the event listener here

  //new image
   $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'https://www.czs.org/custom.czs/files/fa/faf67051-9dd2-49c6-83bc-47e3be9731a5.jpg')
  })

   // old image
   $('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })


//RELEASE 5: Experiment on your own








})  // end of the document.ready function: do not remove or write DOM manipulation below this.