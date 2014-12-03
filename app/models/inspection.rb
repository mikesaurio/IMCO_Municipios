class Inspection < ActiveRecord::Base

  belongs_to :dependency

  has_many :inspection_lines
  has_many :line, through: :inspection_lines

  has_many :inspection_requirements
  has_many :requirement, through: :inspection_requirements
  
end
