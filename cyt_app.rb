# Cleanup
remove_file "README"
template "templates/README.textile", "README.textile"

remove_file "public/index.html"

copy_file "templates/Gemfile", "Gemfile"
copy_file "templates/.gitignore", ".gitignore"

# Authorization
generate "devise:install"
generate "devise", "User"
copy_file "templates/app/views/devise", "app/views/devise"
rake "db:migrate"

# Navigation
copy_file "templates/config/initializers/simple_navigation.rb", "config/initializers/simple_navigation.rb"
copy_file "config/navigation"
# copy overview renderer etc.

# Styling
generate "styleyt:theme"

# Testing
generate "rspec:install"

# Formtastic
generate "formtastic:install"
copy_file "templates/config/initializers/formtastic.rb", "config/initializers/formtastic.rb"

# Application settings
template "config/application.rb"

# Landing page
# Generate welcome and overview controllers, add default route.

# Layout
remove_file "public/images/rails.png"

# Initialize CanCan
# Migrations
# Models, Ability

# Initialize Tagging
generate "acts_as_taggable_on:migration"
rake "db:migrate"
