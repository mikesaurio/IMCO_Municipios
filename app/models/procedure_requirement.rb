class ProcedureRequirement < ActiveRecord::Base

  belongs_to :procedures
  belongs_to :requirements

end
