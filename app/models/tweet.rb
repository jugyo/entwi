class Tweet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text

  referenced_in :user
  references_many :comments, :inverse_of => :tweet
end
