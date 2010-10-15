# from https://gist.github.com/280196/5c075f4a3d3a4118d1d706fce07e40572a3873c7#file_template_compass.rb
#----------------------------------------------------------------------------
# Compass
#----------------------------------------------------------------------------

file 'config/compass.rb', <<-CODE
# Require any additional compass plugins here.
project_type = :rails
project_path = RAILS_ROOT if defined?(RAILS_ROOT)
# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "public/stylesheets/"
sass_dir = "app/stylesheets"
images_dir = "public/images"
javascripts_dir = "public/javascripts"
# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true
http_images_path = "/images"
http_stylesheets_path = "/stylesheets"
http_javascripts_path = "/javascripts"
output_style = :compact
CODE

file 'config/initializers/compass.rb', <<-CODE
require 'compass'
# If you have any compass plugins, require them here.
Compass.configuration.parse(File.join(RAILS_ROOT, "config", "compass.config"))
Compass.configuration.environment = RAILS_ENV.to_sym
Compass.configure_sass_plugin!
CODE
