require 'spec_helper'

describe AuthenticationsController do

	it "should redirect to root with notice of successful save" do
		Authentication.any_instance.stubs(:valid?).returns(true)
		get 'create'
		response.should render :add_details
	end

	it "should render :add_details page if user needs to add info after first omniauth login with notice of add email and password"


end
