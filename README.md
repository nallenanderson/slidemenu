# Slidemenu for Rails

Wraps the Sidr javascript lib for the Rails' Asset Pipeline.

All the swag for this awesome lib goes out to [Alberto Varela][1] and [Jesper Josefsson][2].

This has been updated to be used with Jquery.Turbolinks for Rails 4.

## Installation

Add this line to your application's Gemfile:

    gem 'slidemenu'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slidemenu

## Usage

Add the javascript to your javascript manifest:

    //= require jquery.sidr

Optionally add one of the included stylesheets to your CSS manifest:

    *= require jquery.sidr.light
    *= require jquery.sidr.dark

That's all.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[1]:http://www.berriart.com/sidr/
[2]:https://github.com/jesjos