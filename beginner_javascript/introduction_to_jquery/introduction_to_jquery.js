/* INTRODUCTION TO JQUERY */

/* Sample Code ------------ */

console.log($('a').attr('href'));

$('a').not('[href*="my-domain.com"]').attr("target", "_blank");

$('button').on('click', function() {
    $('a').attr('href', 'https://github.com/');
    console.log($('a').attr('href'));
  });


$('#awesomeBtn').on('click', function(event) {
  console.log(event);
)};


/* Hover ------------ */

$('.loc').hover(
  function() {
    $(this).html("<strong>Location:</strong> Your house?");
  },
  function() {
    $(this).html("<strong>Location:</strong> Treehouse Adoption Center");
  }
);

$('.loc').hover(
  function(){
    $(this).html("<strong>Location:</strong> Your house?!");
  },
  function() {
    $(this).html("<strong>Location:</strong> Treehouse Adoption Center");
});

/* Adding Content to the Page ------------ */


// grab info from the form

var $name = $('#pet-name');
var $species = $('#pet-species');
var $notes = $('#pet-notes');

var $newPet = $(
   '<section class="six columns"><div class="card"><p><strong>Name:</strong> ' + $name +
   '</p><p><strong>Species:</strong> ' + $species +
   '</p><p><strong>Notes:</strong> ' + $notes +
   '</p><span class="close">&times;</span></div></section>'
);
// Attach the new elements to the page
$('#posted-pets').append($newPet);

// Make the 'x' in the corner remove the sections it's contained within
$('.close').on('click', function() {
  $(this).parent().remove();
});

//Reset Form Fields

 $('#pet-name').val("");
 $('#pet-species').val("Dog");
 $('#pet-notes').val("");

// puppy images fade in

$('img').css('display', 'none').fadeIn(1600);

$('.card').on('click', function() {
  $(this).toggleClass('')
});

$('div').on('click', function() {
  $('#one').empty();
  $('#two').remove();
});
