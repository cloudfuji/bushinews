class BushidomessagesController < ApplicationController
  # GET /bushidomessages
  # GET /bushidomessages.xml
  def index
    @bushidomessages = Bushidomessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bushidomessages }
    end
  end

  # GET /bushidomessages/1
  # GET /bushidomessages/1.xml
  def show
    @bushidomessage = Bushidomessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bushidomessage }
    end
  end

  # GET /bushidomessages/new
  # GET /bushidomessages/new.xml
  def new
    @bushidomessage = Bushidomessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bushidomessage }
    end
  end

  # GET /bushidomessages/1/edit
  def edit
    @bushidomessage = Bushidomessage.find(params[:id])
  end

  # POST /bushidomessages
  # POST /bushidomessages.xml
  def create
    @bushidomessage = Bushidomessage.new(params[:bushidomessage])

    respond_to do |format|
      if @bushidomessage.save
        format.html { redirect_to(@bushidomessage, :notice => 'Bushidomessage was successfully created.') }
        format.xml  { render :xml => @bushidomessage, :status => :created, :location => @bushidomessage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bushidomessage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bushidomessages/1
  # PUT /bushidomessages/1.xml
  def update
    @bushidomessage = Bushidomessage.find(params[:id])

    respond_to do |format|
      if @bushidomessage.update_attributes(params[:bushidomessage])
        format.html { redirect_to(@bushidomessage, :notice => 'Bushidomessage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bushidomessage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bushidomessages/1
  # DELETE /bushidomessages/1.xml
  def destroy
    @bushidomessage = Bushidomessage.find(params[:id])
    @bushidomessage.destroy

    respond_to do |format|
      format.html { redirect_to(bushidomessages_url) }
      format.xml  { head :ok }
    end
  end
end
