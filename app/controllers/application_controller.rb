class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter do
    if params[:return_to].present?
      session[:return_to] = params[:return_to]
    end
  end
end
