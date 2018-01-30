﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="carousel1.aspx.cs" Inherits="TestGallery_carousel1" %>

<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
	<meta content="charset=utf-8">
	<title>FlexSlider 2</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

  <!-- Syntax Highlighter -->
  <link href="css/shCore.css" rel="stylesheet" type="text/css" />
  <link href="css/shThemeDefault.css" rel="stylesheet" type="text/css" />
  <!-- Demo CSS -->
	<link rel="stylesheet" href="css/demo.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="../flexslider.css" type="text/css" media="screen" />

	<!-- Modernizr -->
  <script src="js/modernizr.js"></script>

</head>
<body class="loading">

  <div id="container" class="cf">
    <header role="navigation">
      <a class="logo" href="http://www.woothemes.com" title="WooThemes">
        <img src="images/logo.png" alt="WooThemes" />
	  </a>
      <h1>FlexSlider 2</h1>
      <h2>The best responsive slider. Period.</h2>
      <a class="button green" href="https://github.com/woothemes/FlexSlider/zipball/master">Download Flexslider</a>
      <h3 class="nav-header">Other Examples</h3>
      <nav>
        <ul>
          <li><a href="index.html">Basic Slider</a></li>
          <li><a href="basic-slider-with-custom-direction-nav.html">Basic Slider customDirectionNav</a></li>
          <li><a href="basic-slider-with-caption.html">Basic Slider with Simple Caption</a></li>
          <li><a href="thumbnail-controlnav.html">Slider w/thumbnail controlNav pattern</a></li>
          <li class="active"><a href="thumbnail-slider.html">Slider w/thumbnail slider</a></li>
          <li><a href="basic-carousel.html">Basic Carousel</a></li>
          <li><a href="carousel-min-max.html">Carousel with min and max ranges</a></li>
          <li><a href="dynamic-carousel-min-max.html">Carousel with dynamic min/max ranges</a></li>
          <li><a href="video.html">Video & the api (vimeo)</a></li>
          <li><a href="video-wistia.html">Video & the api (wistia)</a></li>
        </ul>
      </nav>
    </header>

	<div id="main" role="main">
      <section class="slider">
        
        <div id="slider" class="flexslider">

  <ul class="slides">

    <li>

      <img src="slide1.jpg" />

    </li>

    <li>

      <img src="slide2.jpg" />

    </li>

    <li>

      <img src="slide3.jpg" />

    </li>

    <li>

      <img src="slide4.jpg" />

    </li>

    <!-- items mirrored twice, total of 12 -->

  </ul>

</div>

<div id="carousel" class="flexslider">

  <ul class="slides">

    <li>

      <img src="slide1.jpg" />

    </li>

    <li>

      <img src="slide2.jpg" />

    </li>

    <li>

      <img src="slide3.jpg" />

    </li>

    <li>

      <img src="slide4.jpg" />

    </li>

    <!-- items mirrored twice, total of 12 -->

  </ul>

</div>
      </section>
      <aside>
        <div class="cf">
          <h3>Slider with Carousel Slider as Navigation</h3>
          <ul class="toggle cf">
            <li class="js"><a href="#view-js">JS</a></li>
            <li class="html"><a href="#view-html">HTML</a></li>
          </ul>
        </div>
        <div id="view-js" class="code">
          <pre class="brush: js; toolbar: false; gutter: false;">
            $(window).load(function() {
              // The slider being synced must be initialized first
              $('#carousel').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: false,
                slideshow: false,
                itemWidth: 210,
                itemMargin: 5,
                asNavFor: '#slider'
              });

              $('#slider').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: false,
                slideshow: false,
                sync: "#carousel"
              });
            });
          </pre>
        </div>
        <div id="view-html" class="code">
          <pre class="brush: xml; toolbar: false; gutter: false;">
            &lt;!-- Place somewhere in the &lt;body&gt; of your page -->
            &lt;div id="slider" class="flexslider">
              &lt;ul class="slides">
                &lt;li>
                  &lt;img src="slide1.jpg" />
                &lt;/li>
                &lt;li>
                  &lt;img src="slide2.jpg" />
                &lt;/li>
                &lt;li>
                  &lt;img src="slide3.jpg" />
                &lt;/li>
                &lt;li>
                  &lt;img src="slide4.jpg" />
                &lt;/li>
              
              &lt;/ul>
            &lt;/div>
           
          </pre>
        </div>
      </aside>
    </div>

  </div>

  <!-- jQuery -->
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.min.js">\x3C/script>')</script>

  <!-- FlexSlider -->
  <script defer src="jquery.flexslider.js"></script>

  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('#carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        itemWidth: 210,
        itemMargin: 5,
        asNavFor: '#slider'
      });

      $('#slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        sync: "#carousel",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>


  <!-- Syntax Highlighter -->
  <script type="text/javascript" src="js/shCore.js"></script>
  <script type="text/javascript" src="js/shBrushXml.js"></script>
  <script type="text/javascript" src="js/shBrushJScript.js"></script>

  <!-- Optional FlexSlider Additions -->
  <script src="js/jquery.easing.js"></script>
  <script src="js/jquery.mousewheel.js"></script>
  <script defer src="js/demo.js"></script>

</body>
</html>