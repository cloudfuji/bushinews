class Tester < ActiveRecord::Base
  # Include default devise modules. Others available are:
  bushido :customer_lead

  # Setup accessible (or protected) attributes for your model
  attr_accessible :bushido_id, :bushido_version
end
