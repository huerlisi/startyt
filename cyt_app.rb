
template_root = File.expand_path(File.join(File.dirname(__FILE__)))
source_paths << File.join(template_root, "files")
source_paths.reverse!

# Cleanup
remove_file "README"
template "README.textile.erb", "README.textile"

remove_file "public/index.html"

copy_file "Gemfile"
run "bundle install"

copy_file ".gitignore"

# Authorization
generate "devise:install"
generate "devise", "User"
copy_file "app/views/devise"
rake "db:migrate"

# Navigation
copy_file "config/initializers/simple_navigation.rb"
copy_file "config/navigation"
# copy overview renderer etc.

# Styling
generate "styleyt:theme"

# Testing
generate "rspec:install"

# Formtastic
generate "formtastic:install"
copy_file "config/initializers/formtastic.rb"

# Application settings
#template "config/application.rb"

# Landing page
# Generate welcome and overview controllers, add default route.

# Layout
remove_file "public/images/rails.png"

# Initialize CanCan
# Migrations
# Models, Ability

# Initialize Tagging
#generate "acts_as_taggable_on:migration"
#rake "db:migrate"
