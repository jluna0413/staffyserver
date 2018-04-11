require "application_system_test_case"

class TalentProfilesTest < ApplicationSystemTestCase
  setup do
    @talent_profile = talent_profiles(:one)
  end

  test "visiting the index" do
    visit talent_profiles_url
    assert_selector "h1", text: "Talent Profiles"
  end

  test "creating a Talent profile" do
    visit talent_profiles_url
    click_on "New Talent Profile"

    fill_in "Address", with: @talent_profile.address
    fill_in "Address2", with: @talent_profile.address2
    fill_in "Biography", with: @talent_profile.biography
    fill_in "Birthday", with: @talent_profile.birthday
    fill_in "City", with: @talent_profile.city
    fill_in "Eyecolor", with: @talent_profile.eyecolor
    fill_in "First Name", with: @talent_profile.first_name
    fill_in "Government", with: @talent_profile.government_id
    fill_in "Has Visible Tattoo", with: @talent_profile.has_visible_tattoo
    fill_in "Last Name", with: @talent_profile.last_name
    fill_in "Middle Name", with: @talent_profile.middle_name
    fill_in "Pantlength", with: @talent_profile.pantlength
    fill_in "Phone", with: @talent_profile.phone
    fill_in "Sex", with: @talent_profile.sex
    fill_in "State", with: @talent_profile.state
    fill_in "Topsuit", with: @talent_profile.topsuit
    fill_in "User", with: @talent_profile.user_id
    fill_in "Username", with: @talent_profile.username
    fill_in "Waisthip", with: @talent_profile.waisthip
    fill_in "Zipcode", with: @talent_profile.zipcode
    click_on "Create Talent profile"

    assert_text "Talent profile was successfully created"
    click_on "Back"
  end

  test "updating a Talent profile" do
    visit talent_profiles_url
    click_on "Edit", match: :first

    fill_in "Address", with: @talent_profile.address
    fill_in "Address2", with: @talent_profile.address2
    fill_in "Biography", with: @talent_profile.biography
    fill_in "Birthday", with: @talent_profile.birthday
    fill_in "City", with: @talent_profile.city
    fill_in "Eyecolor", with: @talent_profile.eyecolor
    fill_in "First Name", with: @talent_profile.first_name
    fill_in "Government", with: @talent_profile.government_id
    fill_in "Has Visible Tattoo", with: @talent_profile.has_visible_tattoo
    fill_in "Last Name", with: @talent_profile.last_name
    fill_in "Middle Name", with: @talent_profile.middle_name
    fill_in "Pantlength", with: @talent_profile.pantlength
    fill_in "Phone", with: @talent_profile.phone
    fill_in "Sex", with: @talent_profile.sex
    fill_in "State", with: @talent_profile.state
    fill_in "Topsuit", with: @talent_profile.topsuit
    fill_in "User", with: @talent_profile.user_id
    fill_in "Username", with: @talent_profile.username
    fill_in "Waisthip", with: @talent_profile.waisthip
    fill_in "Zipcode", with: @talent_profile.zipcode
    click_on "Update Talent profile"

    assert_text "Talent profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Talent profile" do
    visit talent_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Talent profile was successfully destroyed"
  end
end
