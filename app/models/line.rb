class Line < ActiveRecord::Base

  has_many :procedure_lines
  has_many :procedure, through: :procedure_lines

  has_many :inspection_lines
  has_many :inspection, through: :inspection_lines

end
