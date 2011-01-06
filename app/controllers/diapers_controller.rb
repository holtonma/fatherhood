class DiapersController < ApplicationController
  # GET /diapers
  # GET /diapers.xml
  def index
    @diapers = Diaper.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @diapers }
    end
  end

  # GET /diapers/1
  # GET /diapers/1.xml
  def show
    @diaper = Diaper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diaper }
    end
  end

  # GET /diapers/new
  # GET /diapers/new.xml
  def new
    @diaper = Diaper.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diaper }
    end
  end

  # GET /diapers/1/edit
  def edit
    @diaper = Diaper.find(params[:id])
  end

  # POST /diapers
  # POST /diapers.xml
  def create
    @diaper = Diaper.new(params[:diaper])

    respond_to do |format|
      if @diaper.save
        format.html { redirect_to(@diaper, :notice => 'Diaper was successfully created.') }
        format.xml  { render :xml => @diaper, :status => :created, :location => @diaper }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diaper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /diapers/1
  # PUT /diapers/1.xml
  def update
    @diaper = Diaper.find(params[:id])

    respond_to do |format|
      if @diaper.update_attributes(params[:diaper])
        format.html { redirect_to(@diaper, :notice => 'Diaper was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diaper.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /diapers/1
  # DELETE /diapers/1.xml
  def destroy
    @diaper = Diaper.find(params[:id])
    @diaper.destroy

    respond_to do |format|
      format.html { redirect_to(diapers_url) }
      format.xml  { head :ok }
    end
  end
end
