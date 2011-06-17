class LeadsController < ApplicationController
  def new
    
  end

  def create
    puts "Lead: #{params[:lead].inspect}"
    Bushido::Data.publish(:customer_lead, {
                            :first_name => params[:lead][:first_name],
                            :last_name => params[:lead][:last_name],
                            :email => params[:lead][:email]}
                          )
    render :action => :new
  end
end
