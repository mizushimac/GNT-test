require 'rails_helper'

RSpec.describe "vehicles/new", type: :view do
  before(:each) do
    assign(:vehicle_form, VehicleForm.new(
      :manufacture => "BMW",
      :model => "Serial 8",
      :year => "2015",
      :price => "9.99"
    ))
  end

  it "renders new vehicle form" do
    render

    assert_select "form[action=?][method=?]", vehicles_path, "post" do

      assert_select "input[name=?]", "vehicle_form[manufacture]"
      
      assert_select "input[name=?]", "vehicle_form[model]"
      
      assert_select "select[name=?]", "vehicle_form[year]"
      
      assert_select "input[name=?]", "vehicle_form[price]"
    end
  end
end
