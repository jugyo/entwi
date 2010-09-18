class Tweet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text

  referenced_in :user
end
