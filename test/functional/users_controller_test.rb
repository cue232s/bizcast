require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { Birthday: @user.Birthday, Country: @user.Country, Email: @user.Email, Fname: @user.Fname, Gender: @user.Gender, Lname: @user.Lname, State: @user.State, Username: @user.Username, Zip: @user.Zip }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { Birthday: @user.Birthday, Country: @user.Country, Email: @user.Email, Fname: @user.Fname, Gender: @user.Gender, Lname: @user.Lname, State: @user.State, Username: @user.Username, Zip: @user.Zip }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
