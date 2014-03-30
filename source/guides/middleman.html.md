---
title: Middleman - Pancake Docs
generator: Middleman
home: http://middlemanapp.com/
git: https://github.com/middleman/middleman
---

## Basic Commands

```sh
middleman init NAME   # Initializes new project NAME
middleman build       # Builds the static site
middleman server      # Starts the preview server
middleman help        # Show command usage information
```

## Getting Started

A basic Middleman project might look like:

```sh
# middleman configuration file
config.rb

# ruby dependencies
Gemfile

# source
source/index.html.erb
source/images/background.png
source/javascripts/all.js
source/stylesheets/all.css
source/layouts/layout.erb
```

## Pages

Pages are written in Ruby's `erb` templating language by default. They end in `.html.erb`.

## Templating

Templates are known as layouts, and live in `./source/layouts`. By default they are written in the `erb` format, and must end with the `.erb` extension.

There are two places you can specify the template to be used for a page: in `config.rb`, or in a page's frontmatter.

For example, to apply a layout `source/layouts/pineapple.erb` to `source/pages/apple.html.erb`, both are valid:

  - In `config.rb`, specify:

        page '/pages/apple.html', :layout => 'pineapple'

  - Pages take a YAML or JSON preamble at the top of the file, called the _frontmatter_. In the frontmatter, you can specify a layout.

        ---
        layout: pineapple
        ---

        ... markdown content goes here ...

    Or JSON:

        ;;;
        "layout": "pineapple",
        ;;;

        ... markdown content goes here ...

    Apart from `layout`, there are other special keywords such as `ignore`. You can learn more about that here. Everything else gets passed to the template, in the `current_page.data` hash.

## Extensions

Middleman comes with built-in support for CoffeeScript, SASS, and HAML. Other preprocessors, such as LESS or Slim, can generally be added simply by including the appropriate gem in your site's Gemfile.