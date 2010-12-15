# Cleanup
remove_file "README"
template "templates/README.textile", "README.textile"

run "rm public/index.html"

copy_file "templates/Gemfile", "Gemfile"
copy_file "templates/.gitignore", ".gitignore"

# Authorization
generate "devise:install"
generate "devise", "User"
copy_file "templates/app/views/devise", "app/views/devise"
rake "db:migrate"

# Navigation
copy_file "templates/config/initializers/simple_navigation.rb", "config/initializers/simple_navigation.rb"

# Styling
generate "styleyt:theme"

# Testing
generate "rspec:install"

# Formtastic
generate "formtastic:install"
copy_file "templates/config/initializers/formtastic.rb", "config/initializers/formtastic.rb"
