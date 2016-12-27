// Problem It looks bad in smaller browser width and devices like a phone
// Solution : To hide the text links and swap them out with a more appropriate navigation

// create a select and append to #menu

var $select = $("<select></select>");
$("#menu").append($select);

// cycle over menu links
$("#menu a").each(function(){
  var $anchor = $(this);
  // create an option
  var $option = $("<option></option>");
  // deal with selected options depending on current page
  if$anchor.parent().hasClass("selected") {
    $option.prop(".selected", true);
  };
  
  // options value is the href of the link
  $option.val($anchor.attr("href"))
  // option's text is the text of link
  var anchorText = $anchor.text();
  $option.text(anchorText);
  // append option to select
  $select.append($option);
});

  // bind change listener to the select
  $select.change(function(){
    //to go to select's location
    window.location = $select.val();
  });
// modify css to hide links on small width and show button and select

// also hides select and button on larger width
// deal with selected options depending on current page
