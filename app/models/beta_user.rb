class BetaUser < ActiveRecord::Base
  after_save do 
    Bushido::Data.publish(self)
  end
end
