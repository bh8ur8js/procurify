require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get locations_url
    assert_response :success
  end

  test "should get new" do
    get new_location_url
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post locations_url, params: { location: { address: @location.address, business: @location.business, business_unit: @location.business_unit, city: @location.city, cost_centre: @location.cost_centre, country: @location.country, description: @location.description, fax: @location.fax, internal_id: @location.internal_id, location_type: @location.location_type, phone: @location.phone, post_code: @location.post_code, procurify_id: @location.procurify_id, state: @location.state, status: @location.status } }
    end

    assert_redirected_to location_url(Location.last)
  end

  test "should show location" do
    get location_url(@location)
    assert_response :success
  end

  test "should get edit" do
    get edit_location_url(@location)
    assert_response :success
  end

  test "should update location" do
    patch location_url(@location), params: { location: { address: @location.address, business: @location.business, business_unit: @location.business_unit, city: @location.city, cost_centre: @location.cost_centre, country: @location.country, description: @location.description, fax: @location.fax, internal_id: @location.internal_id, location_type: @location.location_type, phone: @location.phone, post_code: @location.post_code, procurify_id: @location.procurify_id, state: @location.state, status: @location.status } }
    assert_redirected_to location_url(@location)
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete location_url(@location)
    end

    assert_redirected_to locations_url
  end
end
