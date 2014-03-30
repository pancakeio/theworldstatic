---
title: Wintersmith - Pancake Docs
generator: Wintersmith
home: http://wintersmith.io/
git: https://github.com/jnordberg/wintersmith
---

## Basic Commands

```sh
wintersmith new NAME   # Creates new project NAME
wintersmith build      # Builds the static site
wintersmith preview    # Starts the preview server
wintersmith -h         # Show command usage information
```

## Getting Started

A basic Wintersmith project might look like:

```sh
# wintersmith configuration file
./config.json

# node dependencies
./package.json

# source
./contents/index.json
./contents/about.md
./contents/articles/another-test/index.md
./contents/css/main.css

# templates
./templates/index.jade
./templates/layout.jade

# plugins
./plugins/paginator.coffee
```

## Pages

Pages are written in markdown; page files end in `.md`.

## Templating

Templates are located in `./templates`. By default they are written in the [jade](http://jade-lang.com/) format, and must end with the `.jade` extension.

There are two ways to use templates: either specified in the metadata of a page, or directly via `json` files.

For example, to use a layout `templates/pineapple.jade` with `contents/apple.md`, both are valid:

  - Pages take a YAML preamble as metadata. You can specify the template as follows in `contents/apple.md`:

        ---
        template: pineapple
        ---

        ... markdown content goes here ...

  - Replace `apple.md` with `apple.json`, which is treated as metadata. This works best when you don't have additional content.

        {
          "template": "pineapple.jade"
        }

## Extensions

To use SASS, LESS, CoffeeScript, or other preprocessors, there are numerous [plugins](https://github.com/jnordberg/wintersmith/wiki/Plugins).