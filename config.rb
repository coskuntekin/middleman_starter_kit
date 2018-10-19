###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
# which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

###
# Environment List
###

# Server Environment
configure :server do

  # Debug assets
  set :debug_assets, true

end

# Development Environment
configure :development do

  #To activate the middleman-sprockets
  activate :sprockets

  # Reload the browser automatically whenever files change
  activate :livereload, :no_swf => true

  # Assets Pipeline Sets
  set :css_dir, 'assets/stylesheets'
  set :js_dir, 'assets/javascripts'
  set :images_dir, 'assets/images'
  set :fonts_dir, 'assets/fonts'

  # Pretty URLs
  # activate :directory_indexes

end

# Build Environment
configure :build do

  #To activate the middleman-sprockets
  require 'sprockets/es6'
  activate :sprockets do |s|
    s.supported_output_extensions << '.es6'
  end
  
  # Automatic image dimensions on image_tag helpers
  activate :automatic_image_sizes

  # Autoprefixer
  activate :autoprefixer do |prefix|
    prefix.browsers = "last 1 versions"
  end

  # Minify CSS on build
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # GZIP text files
  # activate :gzip

  # Append a hash to asset urls (make sure to use the url helpers)
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets
  
end

# Production Environment
configure :production do

  # Assets Pipeline Sets
  set :css_dir, 'assets/stylesheets'
  set :js_dir, 'assets/javascripts'
  set :images_dir, 'assets/images'
  set :fonts_dir, 'assets/fonts'

  # Middleman Production dev server run code
  # 'middleman server -e production'

end
