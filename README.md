# Slidemenu for Rails

Wraps the Sidr javascript lib for the Rails' Asset Pipeline.

This lib goes out to [Alberto Varela][1] and [Jesper Josefsson][2] who did all the hard work to get this put together.  I just updated a couple of things so that I wouldn't have to click the button a thousand times to get it to work with Turbolinks in Rails 4.

## Get Set Up

Add this line to your application's Gemfile:

    gem 'slidemenu', '~> 1.0.0'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install slidemenu

## Use It

Add the javascript to your javascript manifest:

    //= require jquery.sidr

Optionally add one of the included stylesheets to your CSS manifest:

    *= require jquery.sidr.light
    *= require jquery.sidr.dark

If you are using Turbolinks in your app, you'll need to add the [jquery.turbolinks gem][3] to your Gemfile. Make sure to set up your javascript manifest with jquery.turbolinks before turbolinks.

		//= require jquery.turbolinks
		//= require jquery.sidr
		//= require turbolinks 

## Example

Here is an example for how to use in a _header.html.erb (with Bootstrap 4).

	<div class="navbar-header">
    <button id="right-menu" class="navbar-toggle" data-toggle="collapse"  href="#rightSide">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <%= link_to "#", root_path, class: "navbar-brand" %>
  </div>

  <div id="rightSide">
     <ul>
        <li><%= link_to "Blog", blogs_path %></li>
        <li><%= link_to "Courses", courses_path %></li>
        <% if user_signed_in? %>
          <li><%= link_to "My Profile", edit_user_registration_path %></li>
          <li><%= link_to "Sign Out", destroy_user_session_path, method: :delete %></li>
        <% else %>
          <li><%= link_to "Sign Up", new_user_registration_path %></li>
        <% end %>
     </ul>
  </div>

And don't forget to include the script.

  $(function() {
    $('#right-menu').sidr({
      name: 'sidr-right',
      side: 'right'
    });
  });

That should do it.  Have fun.

[1]:http://www.berriart.com/sidr/
[2]:https://github.com/jesjos
[3]:https://github.com/kossnocorp/jquery.turbolinks