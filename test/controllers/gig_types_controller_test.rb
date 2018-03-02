require 'test_helper'

class GigTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gig_type = gig_types(:one)
  end

  test "should get index" do
    get gig_types_url
    assert_response :success
  end

  test "should get new" do
    get new_gig_type_url
    assert_response :success
  end

  test "should create gig_type" do
    assert_difference('GigType.count') do
      post gig_types_url, params: { gig_type: { color: @gig_type.color, description: @gig_type.description, icon: @gig_type.icon, name: @gig_type.name } }
    end

    assert_redirected_to gig_type_url(GigType.last)
  end

  test "should show gig_type" do
    get gig_type_url(@gig_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_gig_type_url(@gig_type)
    assert_response :success
  end

  test "should update gig_type" do
    patch gig_type_url(@gig_type), params: { gig_type: { color: @gig_type.color, description: @gig_type.description, icon: @gig_type.icon, name: @gig_type.name } }
    assert_redirected_to gig_type_url(@gig_type)
  end

  test "should destroy gig_type" do
    assert_difference('GigType.count', -1) do
      delete gig_type_url(@gig_type)
    end

    assert_redirected_to gig_types_url
  end
end
