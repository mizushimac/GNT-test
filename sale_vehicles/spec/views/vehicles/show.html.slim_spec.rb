require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      :manufacture => "Manufacture",
      :model => "Model",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Manufacture/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/9.99/)
  end
end
