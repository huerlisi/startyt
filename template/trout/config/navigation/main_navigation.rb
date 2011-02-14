# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|  
  # Define the primary navigation
  navigation.items do |primary|
    # Application navigation
    if current_user
      primary.item :overview, t('main_navigation.overview'), home_welcome_path
      
#      primary.item :nav_users, t_model(User), users_path, :if => lambda { can?(:index, User) } do |user|
#        user.item :new_user, t_action(:new, User), new_user_path, :if => lambda { can?(:new, User) }
#       user.item :user_index, t_action(:index, User), users_path, :if => lambda { can?(:index, User) }
#       user.item :current_user, t_title(:current, User), current_users_path
#      end
    end
  end
end
