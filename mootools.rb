# Replaces default Prototype sadness with MooTools awesomeness.

# download my latest unobtrusive rails adapter for MooTools
# and copies of full build yui compressed core / more
# these are pulled from my github page because google isn't up to
# core 1.3 and doesn't even host more :(
get 'http://github.com/re5et/mootools-ujs/raw/master/Source/rails.js', 'public/javascripts/rails.js'
get 'http://re5et.github.com/assets/js/mootools.js', 'public/javascripts/mootools-core.js'
get 'http://re5et.github.com/assets/js/mootools-more.js', 'public/javascripts/mootools-more.js'

# create mootools.rb in the config/initializers directory to use MooTools as the default javascript framework
initializer 'mootools.rb', <<-EOF
Rails.application.config.action_view.javascript_expansions[:defaults] = %w(mootools-core mootools-more rails)
EOF
