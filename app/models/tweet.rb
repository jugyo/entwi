class Tweet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text
end
