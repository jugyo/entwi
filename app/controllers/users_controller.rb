class UsersController < ApplicationController
  def show
    @user = User.where(:login => params[:login]).first
  end
end
