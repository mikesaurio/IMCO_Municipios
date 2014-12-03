class ProcedureLine < ActiveRecord::Base
 
  belongs_to :procedures
  belongs_to :lines

end
