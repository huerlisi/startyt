run "rm README"

run "rm public/index.html"

run "cp templates/Gemfile"
run "cp templates/.gitignore"

generate "devise:install"
generate "devise", "User"

rake "db:migrate"
cp "templates/simple_navigation.rb" "config/initializers/simple_navigation.rb"

generate "styleyt:theme"
