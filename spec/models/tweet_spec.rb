require 'spec_helper'

describe Tweet do
  describe 'associations' do
    before do
      @tweet = Tweet.create(:trans_type => 'en2ja', :text => 'I am a pen.')
      @tweet.comments.create!(:text => 'foo')
      @tweet.comments.create!(:text => 'bar')
    end
    subject { @tweet }
    it { subject.comments.count.should == 2 }
  end

  describe 'validations' do
    before do
      @tweet = Tweet.new(:trans_type => 'en2ja', :text => 'a' * 141)
    end
    subject { @tweet }
    it { should_not be_valid }
  end

  describe 'watchers' do
    before do
      @tweet = Tweet.create(:trans_type => 'en2ja', :text => 'I am a pen.')
      @tweet.watchers << Factory.create(:user).id
      @tweet.watchers << Factory.create(:user).id
    end
    subject { @tweet }
    it { @tweet.watchers.size.should == 2 }
  end
end
