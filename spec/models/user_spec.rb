# coding: utf-8
require 'spec_helper'

describe User do
  describe 'association for tweets' do
    before do
      @user = User.create!
      @user.tweets.create!(:trans_type => 'en2ja', :text => 'foo')
      @user.tweets.create!(:trans_type => 'en2ja', :text => 'bar')
    end
    subject { @user }
    it { subject.tweets.count.should == 2 }
  end

  describe 'association for comments' do
    before do
      @user = User.create!
      @tweet = @user.tweets.create!(:trans_type => 'en2ja', :text => 'foo')
      @tweet.comments.create!(:text => 'フー', :user => @user)
      @tweet.comments.create!(:text => 'フーー', :user => @user)
    end
    subject { @user }
    it { subject.comments.count.should == 2 }
  end
end
