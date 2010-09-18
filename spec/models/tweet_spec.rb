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
end
