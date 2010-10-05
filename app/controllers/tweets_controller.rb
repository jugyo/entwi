# coding: utf-8
class TweetsController < ApplicationController
  before_filter :find_tweet, :only => [:show, :watch, :unwatch]

  def create
    @tweet = Tweet.new(params[:tweet])
    @tweet.user = current_user
    unless @tweet.save
      flash[:notice] = '投稿に失敗しました！'
    end
    redirect_to :root
  end

  def show
  end

  def watch
    @tweet.watchers << current_user.id
    @tweet.save!
    redirect_to @tweet
  end

  def unwatch
    @tweet.watchers.delete current_user.id
    @tweet.save!
    redirect_to @tweet
  end

  private

  def find_tweet
    @tweet = Tweet.find(params[:id])
  end
end
