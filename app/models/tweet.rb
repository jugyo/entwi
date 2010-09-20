# coding: utf-8
class Tweet
  # TODO: i18n
  TRANS_TYPES = {'en2ja' => '英→日', 'ja2en' => '日→英'}

  include Mongoid::Document
  include Mongoid::Timestamps

  field :text
  field :trans_type

  referenced_in :user
  references_many :comments

  validates :text, :presence => true, :length => {:maximum => 140}
  validates :trans_type, :presence => true
end
