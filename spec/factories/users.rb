require 'faker'

FactoryGirl.define do
	factory :user do
		sequence(:email) {|n| "test#{n}@testemail.com"}
		fname {Faker::Name.first_name}
		lname {Faker::Name.last_name}
		username {Faker::Internet.user_name}
		gender "male"
		zip {Faker::Address.zip}
		password "secret1"
		password_confirmation "secret1"


	end
end