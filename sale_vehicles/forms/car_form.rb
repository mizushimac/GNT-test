# app/forms/car_form.rb
class CarForm < FormObject
  # Attributes (DSL provided by Virtus)
  
  attribute :id, Integer
  attribute :manufacture, String
  attribute :model, String
  attribute :year, String
  attribute :price, Decimal

  def model_klass
    "Car".camelize.constantize
  end

end
