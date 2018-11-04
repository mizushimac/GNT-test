require 'rails_helper'

RSpec.describe "vehicles/edit", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :manufacture => "MyString",
      :model => "MyString",
      :price => "9.99"
    ))
    @vehicle_form = assign(:vehicle_form, VehicleForm.new({ id: @vehicle.id }))
  end

  it "renders the edit vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicle_path(@vehicle), "post" do

      assert_select "input[name=?]", "vehicle_form[manufacture]"

      assert_select "input[name=?]", "vehicle_form[model]"

      assert_select "input[name=?]", "vehicle_form[price]"
    end
  end
end
