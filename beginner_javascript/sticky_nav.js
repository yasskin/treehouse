Learn How to Create a Sticky Navigation

http://blog.teamtreehouse.com/create-sticky-navigation

position: fixed;
top: 0;
z-index: 150;

var mn = $(".main-nav");

 $(window).scroll(function() {
  if( $(this).scrollTop() > 250 ) {
    mn.addClass("main-nav-scrolled");
  }
  else {
    mn.removeClass("main-nav-scrolled");
  }
 });

 var  mn = $(".main-nav");
    mns = "main-nav-scrolled";
    hdr = $('header').height();

$(window).scroll(function() {
  if( $(this).scrollTop() > hdr ) {
    mn.addClass(mns);
  } else {
    mn.removeClass(mns);
  }
});

* {
  box-sizing: border-box;
}
body {
  margin: 0;
  padding-top: 250px;
}
header {
  height: 300px;
  padding-top: 50px;
  background: #f07057;
}
.main-nav,
.main {
  position: relative;
}
.main-nav {
  background: #fff;
  height: 80px;
  z-index: 150;
  margin-bottom: -80px;
  box-shadow: 0 2px 3px rgba(0,0,0,.4);
}
header,
.main-nav-scrolled {
  position: fixed;
  width: 100%;
  top: 0;
}
.main {
  background: #f2f2e8;
  padding: 110px 50px 50px;
  column-count: 2;
  column-gap: 40px;
}
