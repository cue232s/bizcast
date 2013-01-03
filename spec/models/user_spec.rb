require 'spec_helper'

describe User do
	
	it "has a valid factory" do
		user = FactoryGirl.create(:user)
		user.should be_valid
	end

	it "is invalid without an email address" do 
		FactoryGirl.build(:user, email: nil).should_not be_valid
	end

	it "is invalid without a fname" do 
		FactoryGirl.build(:user, fname: nil).should_not be_valid
	end

	it "is invalid without a lname" do 
		FactoryGirl.build(:user, lname: nil).should_not be_valid
	end

	it "is invalid without a password" do
			FactoryGirl.build(:user, password: nil).should_not be_valid
	end

	it "is invalid without a password confirmation" do
			FactoryGirl.build(:user, password_confirmation: nil).should_not be_valid
	end

	describe "user authentication" do
		it "should authenticate users with proper credentials" do
			
		end

	end

	it "is able to login authenticate via twitter" 

	it "is able to authenticate via facebook"

end