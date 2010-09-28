class User < TwitterAuth::GenericUser
  include Mongoid::Document

  field :twitter_id,                    :type => String
  field :login,                         :type => String
  field :access_token,                  :type => String
  field :access_secret,                 :type => String

  field :remember_token,                :type => String
  field :remember_token_expires_at,     :type => Time
  field :name,                          :type => String
  field :location,                      :type => String
  field :description,                   :type => String
  field :profile_image_url,             :type => String
  field :url,                           :type => String
  field :protected,                     :type => Boolean
  # field :profile_background_color,      :type => String
  # field :profile_sidebar_fill_color,    :type => String
  # field :profile_link_color,            :type => String
  # field :profile_sidebar_border_color,  :type => String
  # field :profile_text_color,            :type => String
  # field :profile_background_image_url,  :type => String
  # field :profile_background_tile,       :type => Boolean
  # field :friends_count,                 :type => Integer
  # field :statuses_count,                :type => Integer
  # field :followers_count,               :type => Integer
  # field :favourites_count,              :type => Integer

  field :utc_offset,                    :type => Integer
  field :time_zone,                     :type => Integer

  references_many :tweets, :inverse_of => :user
  references_many :comments, :inverse_of => :user
end
