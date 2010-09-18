require 'spec_helper'

describe User do
  describe 'associations' do
    before do
      @user = User.new
      @user.tweets.create!(:text => 'foo')
      @user.tweets.create!(:text => 'bar')
    end
    subject { @user }
    it { should have(2).tweets }
  end
end
