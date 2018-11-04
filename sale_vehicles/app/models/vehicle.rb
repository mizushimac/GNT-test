# == Schema Information
#
# Table name: vehicles
#
#  id          :integer          not null, primary key
#  manufacture :string
#  model       :string
#  year        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Vehicle < ApplicationRecord
end
