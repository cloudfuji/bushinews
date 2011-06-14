class BetaUser < ActiveRecord::Base
  after_save do 
    puts "BETA USER AFTER SAVE"
    Bushido::Data.publish(:customer_lead,self)
  end
end
