class TemperatureTypesController < ApplicationController
  # GET /temperature_types
  # GET /temperature_types.xml
  def index
    @temperature_types = TemperatureType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @temperature_types }
    end
  end

  # GET /temperature_types/1
  # GET /temperature_types/1.xml
  def show
    @temperature_type = TemperatureType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @temperature_type }
    end
  end

  # GET /temperature_types/new
  # GET /temperature_types/new.xml
  def new
    @temperature_type = TemperatureType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @temperature_type }
    end
  end

  # GET /temperature_types/1/edit
  def edit
    @temperature_type = TemperatureType.find(params[:id])
  end

  # POST /temperature_types
  # POST /temperature_types.xml
  def create
    @temperature_type = TemperatureType.new(params[:temperature_type])

    respond_to do |format|
      if @temperature_type.save
        format.html { redirect_to(@temperature_type, :notice => 'Temperature type was successfully created.') }
        format.xml  { render :xml => @temperature_type, :status => :created, :location => @temperature_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @temperature_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /temperature_types/1
  # PUT /temperature_types/1.xml
  def update
    @temperature_type = TemperatureType.find(params[:id])

    respond_to do |format|
      if @temperature_type.update_attributes(params[:temperature_type])
        format.html { redirect_to(@temperature_type, :notice => 'Temperature type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @temperature_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /temperature_types/1
  # DELETE /temperature_types/1.xml
  def destroy
    @temperature_type = TemperatureType.find(params[:id])
    @temperature_type.destroy

    respond_to do |format|
      format.html { redirect_to(temperature_types_url) }
      format.xml  { head :ok }
    end
  end
end
