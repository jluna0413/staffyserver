require 'test_helper'

class TalentProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @talent_profile = talent_profiles(:one)
  end

  test "should get index" do
    get talent_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_talent_profile_url
    assert_response :success
  end

  test "should create talent_profile" do
    assert_difference('TalentProfile.count') do
      post talent_profiles_url, params: { talent_profile: { address: @talent_profile.address, address2: @talent_profile.address2, biography: @talent_profile.biography, birthday: @talent_profile.birthday, city: @talent_profile.city, eyecolor: @talent_profile.eyecolor, first_name: @talent_profile.first_name, government_id: @talent_profile.government_id, has_visible_tattoo: @talent_profile.has_visible_tattoo, last_name: @talent_profile.last_name, middle_name: @talent_profile.middle_name, pantlength: @talent_profile.pantlength, phone: @talent_profile.phone, sex: @talent_profile.sex, state: @talent_profile.state, topsuit: @talent_profile.topsuit, user_id: @talent_profile.user_id, username: @talent_profile.username, waisthip: @talent_profile.waisthip, zipcode: @talent_profile.zipcode } }
    end

    assert_redirected_to talent_profile_url(TalentProfile.last)
  end

  test "should show talent_profile" do
    get talent_profile_url(@talent_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_talent_profile_url(@talent_profile)
    assert_response :success
  end

  test "should update talent_profile" do
    patch talent_profile_url(@talent_profile), params: { talent_profile: { address: @talent_profile.address, address2: @talent_profile.address2, biography: @talent_profile.biography, birthday: @talent_profile.birthday, city: @talent_profile.city, eyecolor: @talent_profile.eyecolor, first_name: @talent_profile.first_name, government_id: @talent_profile.government_id, has_visible_tattoo: @talent_profile.has_visible_tattoo, last_name: @talent_profile.last_name, middle_name: @talent_profile.middle_name, pantlength: @talent_profile.pantlength, phone: @talent_profile.phone, sex: @talent_profile.sex, state: @talent_profile.state, topsuit: @talent_profile.topsuit, user_id: @talent_profile.user_id, username: @talent_profile.username, waisthip: @talent_profile.waisthip, zipcode: @talent_profile.zipcode } }
    assert_redirected_to talent_profile_url(@talent_profile)
  end

  test "should destroy talent_profile" do
    assert_difference('TalentProfile.count', -1) do
      delete talent_profile_url(@talent_profile)
    end

    assert_redirected_to talent_profiles_url
  end
end
