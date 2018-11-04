class FormObject < FormBase
  attr_reader :record
  
  # initialize
  def initialize(attr = {})
    if !attr[:id].nil?
      @record = model_klass.find(attr[:id])
      self.attributes.each { |key, _val| self[key] = attr[key] || @record[key] }
    else
      super(attr)
    end
  end

  def persisted?
    @record.nil? ? false : @record.persisted?
  end

  def id
    @record.nil? ? nil : @record.id
  end

  def save
    @record = id ? model_klass.find(id) : model_klass.new
    return false unless valid?
    @record.attributes = attributes
    @record.save!
  end

  def update
    return false unless valid?
    @record.update_attributes(attributes)
  end

  def model_klass; end
end
