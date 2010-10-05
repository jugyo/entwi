# coding: utf-8
class Tweet
  # TODO: i18n
  TRANS_TYPES = {'en2ja' => 'これを日本語に訳して！', 'ja2en' => 'これを英語に訳して！'}

  include Mongoid::Document
  include Mongoid::Timestamps

  field :text
  field :trans_type
  field :watchers, :type => Array, :default => []

  referenced_in :user
  references_many :comments

  validates :text, :presence => true, :length => {:maximum => 140}
  validates :trans_type, :presence => true

  def trans_type_label
    TRANS_TYPES[trans_type]
  end
end
