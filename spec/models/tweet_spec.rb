require 'spec_helper'

describe Tweet do
  describe 'associations' do
    before do
      @tweet = Tweet.new
      @tweet.comments.create!(:text => 'foo')
      @tweet.comments.create!(:text => 'bar')
    end
    subject { @tweet }
    it { should have(2).comments }
  end

  describe 'validations' do
    before do
      @tweet = Tweet.new(:text => 'a' * 141)
    end
    subject { @tweet }
    it { should_not be_valid }
  end
end
