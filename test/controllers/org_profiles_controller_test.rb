require 'test_helper'

class OrgProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @org_profile = org_profiles(:one)
  end

  test "should get index" do
    get org_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_org_profile_url
    assert_response :success
  end

  test "should create org_profile" do
    assert_difference('OrgProfile.count') do
      post org_profiles_url, params: { org_profile: { address: @org_profile.address, contact_name: @org_profile.contact_name, contact_phone: @org_profile.contact_phone, country: @org_profile.country, description: @org_profile.description, latitude: @org_profile.latitude, link: @org_profile.link, logo: @org_profile.logo, longitude: @org_profile.longitude, name: @org_profile.name, postcode: @org_profile.postcode, slug: @org_profile.slug, state: @org_profile.state, suburb: @org_profile.suburb, user_id: @org_profile.user_id } }
    end

    assert_redirected_to org_profile_url(OrgProfile.last)
  end

  test "should show org_profile" do
    get org_profile_url(@org_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_org_profile_url(@org_profile)
    assert_response :success
  end

  test "should update org_profile" do
    patch org_profile_url(@org_profile), params: { org_profile: { address: @org_profile.address, contact_name: @org_profile.contact_name, contact_phone: @org_profile.contact_phone, country: @org_profile.country, description: @org_profile.description, latitude: @org_profile.latitude, link: @org_profile.link, logo: @org_profile.logo, longitude: @org_profile.longitude, name: @org_profile.name, postcode: @org_profile.postcode, slug: @org_profile.slug, state: @org_profile.state, suburb: @org_profile.suburb, user_id: @org_profile.user_id } }
    assert_redirected_to org_profile_url(@org_profile)
  end

  test "should destroy org_profile" do
    assert_difference('OrgProfile.count', -1) do
      delete org_profile_url(@org_profile)
    end

    assert_redirected_to org_profiles_url
  end
end
