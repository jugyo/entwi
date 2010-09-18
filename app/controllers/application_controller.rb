class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def current_user
    User.find_or_create_by(:name => 'jugyo')
  end
end
