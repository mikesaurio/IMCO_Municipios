class InspectionLine < ActiveRecord::Base

  belongs_to :inspections
  belongs_to :lines

end
