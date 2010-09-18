# coding: utf-8
class TweetsController < ApplicationController
  def create
    @tweet = Tweet.new(params[:tweet])
    unless @tweet.save
      flash[:notice] = '投稿に失敗しました！'
    end
    redirect_to :root
  end

  def show
    @tweet = Tweet.find(params[:id])
  end
end
