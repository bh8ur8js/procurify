require "application_system_test_case"

class LocationsTest < ApplicationSystemTestCase
  setup do
    @location = locations(:one)
  end

  test "visiting the index" do
    visit locations_url
    assert_selector "h1", text: "Locations"
  end

  test "creating a Location" do
    visit locations_url
    click_on "New Location"

    fill_in "Address", with: @location.address
    fill_in "Business", with: @location.business
    fill_in "Business unit", with: @location.business_unit
    fill_in "City", with: @location.city
    fill_in "Cost centre", with: @location.cost_centre
    fill_in "Country", with: @location.country
    fill_in "Description", with: @location.description
    fill_in "Fax", with: @location.fax
    fill_in "Internal", with: @location.internal_id
    fill_in "Location type", with: @location.location_type
    fill_in "Phone", with: @location.phone
    fill_in "Post code", with: @location.post_code
    fill_in "Procurify", with: @location.procurify_id
    fill_in "State", with: @location.state
    fill_in "Status", with: @location.status
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "updating a Location" do
    visit locations_url
    click_on "Edit", match: :first

    fill_in "Address", with: @location.address
    fill_in "Business", with: @location.business
    fill_in "Business unit", with: @location.business_unit
    fill_in "City", with: @location.city
    fill_in "Cost centre", with: @location.cost_centre
    fill_in "Country", with: @location.country
    fill_in "Description", with: @location.description
    fill_in "Fax", with: @location.fax
    fill_in "Internal", with: @location.internal_id
    fill_in "Location type", with: @location.location_type
    fill_in "Phone", with: @location.phone
    fill_in "Post code", with: @location.post_code
    fill_in "Procurify", with: @location.procurify_id
    fill_in "State", with: @location.state
    fill_in "Status", with: @location.status
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "destroying a Location" do
    visit locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location was successfully destroyed"
  end
end
