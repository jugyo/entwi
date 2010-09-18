class HomeController < ApplicationController
  def index
    @tweets = Tweet.all
  end
end
