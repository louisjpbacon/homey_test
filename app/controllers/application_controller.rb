class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  
  helper_method :current_user

  def current_user
    User.first_or_create!(name: "Demo User")
  end
end
