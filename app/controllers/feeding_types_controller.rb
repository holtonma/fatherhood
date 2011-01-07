class FeedingTypesController < ApplicationController
  # GET /feeding_types
  # GET /feeding_types.xml
  def index
    @feeding_types = FeedingType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feeding_types }
    end
  end

  # GET /feeding_types/1
  # GET /feeding_types/1.xml
  def show
    @feeding_type = FeedingType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feeding_type }
    end
  end

  # GET /feeding_types/new
  # GET /feeding_types/new.xml
  def new
    @feeding_type = FeedingType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feeding_type }
    end
  end

  # GET /feeding_types/1/edit
  def edit
    @feeding_type = FeedingType.find(params[:id])
  end

  # POST /feeding_types
  # POST /feeding_types.xml
  def create
    @feeding_type = FeedingType.new(params[:feeding_type])

    respond_to do |format|
      if @feeding_type.save
        format.html { redirect_to(@feeding_type, :notice => 'Feeding type was successfully created.') }
        format.xml  { render :xml => @feeding_type, :status => :created, :location => @feeding_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feeding_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feeding_types/1
  # PUT /feeding_types/1.xml
  def update
    @feeding_type = FeedingType.find(params[:id])

    respond_to do |format|
      if @feeding_type.update_attributes(params[:feeding_type])
        format.html { redirect_to(@feeding_type, :notice => 'Feeding type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feeding_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feeding_types/1
  # DELETE /feeding_types/1.xml
  def destroy
    @feeding_type = FeedingType.find(params[:id])
    @feeding_type.destroy

    respond_to do |format|
      format.html { redirect_to(feeding_types_url) }
      format.xml  { head :ok }
    end
  end
end
