class HomeController < ApplicationController
  def index
    @tweets = Tweet.desc(:created_at)
  end
end
