class Dependency < ActiveRecord::Base
  belongs_to :municipio #Uno


  has_many :procedures


  has_many :inspectors


  has_many :inspections
end
