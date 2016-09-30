FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
  	first_name "User" 
  	last_name "1"
  	email 
  	password "123456"
  	admin false
  end
  factory :admin, class: User do
  	first_name "User" 
  	last_name "1"
  	email 
  	password "123456"
  end

end