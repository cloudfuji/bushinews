class BetaUser < ActiveRecord::Base
  before_save do 
    puts "BETA USER AFTER SAVE"
    return Bushido::Data.publish(:customer_lead,self)
  end
end
