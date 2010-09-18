class CommentsController < ApplicationController
  def create
    tweet = Tweet.find(params[:tweet_id])
    tweet.comments.create!(params[:comment])
    redirect_to tweet_path(tweet)
  end
end
