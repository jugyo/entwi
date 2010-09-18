class Comment
  include Mongoid::Document
  include Mongoid::Timestamps

  field :text, :type => String

  embedded_in :tweet, :inverse_of => :comment
end
