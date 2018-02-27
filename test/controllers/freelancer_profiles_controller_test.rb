require 'test_helper'

class FreelancerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freelancer_profile = freelancer_profiles(:one)
  end

  test "should get index" do
    get freelancer_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_freelancer_profile_url
    assert_response :success
  end

  test "should create freelancer_profile" do
    assert_difference('FreelancerProfile.count') do
      post freelancer_profiles_url, params: { freelancer_profile: { bio: @freelancer_profile.bio, country: @freelancer_profile.country, first_name: @freelancer_profile.first_name, last_name: @freelancer_profile.last_name, latitude: @freelancer_profile.latitude, longitude: @freelancer_profile.longitude, phone: @freelancer_profile.phone, picture: @freelancer_profile.picture, postcode: @freelancer_profile.postcode, suburb: @freelancer_profile.suburb, user_id: @freelancer_profile.user_id } }
    end

    assert_redirected_to freelancer_profile_url(FreelancerProfile.last)
  end

  test "should show freelancer_profile" do
    get freelancer_profile_url(@freelancer_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_freelancer_profile_url(@freelancer_profile)
    assert_response :success
  end

  test "should update freelancer_profile" do
    patch freelancer_profile_url(@freelancer_profile), params: { freelancer_profile: { bio: @freelancer_profile.bio, country: @freelancer_profile.country, first_name: @freelancer_profile.first_name, last_name: @freelancer_profile.last_name, latitude: @freelancer_profile.latitude, longitude: @freelancer_profile.longitude, phone: @freelancer_profile.phone, picture: @freelancer_profile.picture, postcode: @freelancer_profile.postcode, suburb: @freelancer_profile.suburb, user_id: @freelancer_profile.user_id } }
    assert_redirected_to freelancer_profile_url(@freelancer_profile)
  end

  test "should destroy freelancer_profile" do
    assert_difference('FreelancerProfile.count', -1) do
      delete freelancer_profile_url(@freelancer_profile)
    end

    assert_redirected_to freelancer_profiles_url
  end
end
