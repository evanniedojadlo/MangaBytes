---
layout: post
title:  "Blueimp Bootstrap Image Gallery + Ruby on Rails integration"
date:   2014-08-24 19:18:00
categories: rails, bootstrap, blueimp
---

I got a working version of the Ruby on Rails and Blueimp Gallery integration after failing to find any tutorial online so I figured i'd share the steps to make the process a lot easier for any of you reading.

These are the steps that I took:

1.) Git clone the latest version of the project

2.) Copy all of the necessary gallery assets into your rails assets directories

3.) Update your asset pipeline so that you're pulling each asset. I updated mine to the following:

application.js
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-image-gallery
//= require blueimp-helper
//= require blueimp-gallery-fullscreen
//= require blueimp-gallery-indicator
//= require blueimp-gallery
//= require home

application.css.scss
 *= require bootstrap-image-gallery
 *= require blueimp-gallery
 *= require blueimp-gallery-indicator

4.) Add the following Gallery JS to your main JS file, I renamed mine to home.js

$(document).ready(function(){
	document.getElementById('links').onclick = function(event) {
	    event = event || window.event;
	    var target = event.target || event.srcElement,
	        link = target.src ? target.parentNode : target,
	        options = {index: link, event: event},
	        links = this.getElementsByTagName('a');
	    blueimp.Gallery(links, options);
	};
})

5.) Add the following markup to your view

<div id="blueimp-gallery" class="blueimp-gallery">
    <div class="slides"></div>
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
</div>

6.) Wrap your images in the following div

<div id="links">
</div>

Note that my images were pulled from postgres so I used the following erb to link to the full version of my images and not just an expanded thumbnail.

	<% @volume.images.each do |image| %>
		<%= link_to(image_tag(image.image.thumb.url), image.image.url, data: {gallery: ''}) %>



