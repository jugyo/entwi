class User
  include Mongoid::Document

  field :name

  references_many :tweets, :inverse_of => :user
end
