class BetaUser < ActiveRecord::Base
  after_save Bushido::Data.publish(self)
end
