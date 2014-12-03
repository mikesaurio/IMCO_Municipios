class Requirement < ActiveRecord::Base

  has_many :procedure_requirements
  has_many :procedure, through: :procedure_requirements

  has_many :inspection_requirements
  has_many :inspection, through: :inspection_requirements

end
