class Tweet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text

  referenced_in :user
  references_many :comments

  validates_length_of :text, :maximum => 140
end
