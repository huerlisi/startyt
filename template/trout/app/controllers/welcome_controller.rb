# WelcomeController dispatches from landing page.
#
# It dispatches the landing page according to the users role or other conditions.
class WelcomeController < ApplicationController
  def index
    # Login page if user not signed in
    unless user_signed_in?
      redirect_to welcome_home_path 
      return
    end

    # Here comes app specific dispatch
    redirect_to welcome_home_path 
  end
end
