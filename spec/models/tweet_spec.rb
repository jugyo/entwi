require 'spec_helper'

describe Tweet do
  describe 'associations' do
    before do
      @tweet = Tweet.create
      @tweet.comments.create!(:text => 'foo')
      @tweet.comments.create!(:text => 'bar')
    end
    subject { @tweet }
    it { subject.comments.count.should == 2 }
  end

  describe 'validations' do
    before do
      @tweet = Tweet.new(:text => 'a' * 141)
    end
    subject { @tweet }
    it { should_not be_valid }
  end
end
