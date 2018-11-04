require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    @vehicles = [
      Vehicle.create!(
        :manufacture => "Manufacture",
        :model => "Model",
        :price => "9.99"
      ),
      Vehicle.create!(
        :manufacture => "Manufacture",
        :model => "Model",
        :price => "9.99"
      )
    ]
    assign(:vehicles, Kaminari.paginate_array(@vehicles.to_a).page(params[:page]).per(10))
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", :text => "Manufacture".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
