Factory.define :user do |user|
  user.sequence(:login) {|n| "user#{n}" }
  user.sequence(:twitter_id) {|n| n }
end
