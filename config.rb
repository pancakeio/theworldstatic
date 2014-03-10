require 'slim'
###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
page "/index.html", :layout => :home
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

set :markdown_engine, :redcarpet
set :markdown, fenced_code_blocks: true

activate :directory_indexes
activate :syntax

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets

  # Minify Javascript on build

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
