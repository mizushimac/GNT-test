# app/forms/vehicle_form.rb
class VehicleForm < FormObject
  # Attributes (DSL provided by Virtus)
  attribute :id, Integer
  attribute :manufacture, String
  attribute :model, String
  attribute :year, String
  attribute :price, Decimal

  validates :manufacture, :model, length: { maximum: 100 }

  validates :year, numericality: { message: 'must be valid year' }
  validates :price, numericality: {
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 1_000_000_000_000.0,
  }

  def model_klass
    "Vehicle".camelize.constantize
  end

end
