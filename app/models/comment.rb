class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text, :type => String

  referenced_in :tweet
  referenced_in :user
end
