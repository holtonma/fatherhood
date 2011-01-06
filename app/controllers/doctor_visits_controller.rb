class DoctorVisitsController < ApplicationController
  # GET /doctor_visits
  # GET /doctor_visits.xml
  def index
    @doctor_visits = DoctorVisit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @doctor_visits }
    end
  end

  # GET /doctor_visits/1
  # GET /doctor_visits/1.xml
  def show
    @doctor_visit = DoctorVisit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @doctor_visit }
    end
  end

  # GET /doctor_visits/new
  # GET /doctor_visits/new.xml
  def new
    @doctor_visit = DoctorVisit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @doctor_visit }
    end
  end

  # GET /doctor_visits/1/edit
  def edit
    @doctor_visit = DoctorVisit.find(params[:id])
  end

  # POST /doctor_visits
  # POST /doctor_visits.xml
  def create
    @doctor_visit = DoctorVisit.new(params[:doctor_visit])

    respond_to do |format|
      if @doctor_visit.save
        format.html { redirect_to(@doctor_visit, :notice => 'Doctor visit was successfully created.') }
        format.xml  { render :xml => @doctor_visit, :status => :created, :location => @doctor_visit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @doctor_visit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_visits/1
  # PUT /doctor_visits/1.xml
  def update
    @doctor_visit = DoctorVisit.find(params[:id])

    respond_to do |format|
      if @doctor_visit.update_attributes(params[:doctor_visit])
        format.html { redirect_to(@doctor_visit, :notice => 'Doctor visit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @doctor_visit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_visits/1
  # DELETE /doctor_visits/1.xml
  def destroy
    @doctor_visit = DoctorVisit.find(params[:id])
    @doctor_visit.destroy

    respond_to do |format|
      format.html { redirect_to(doctor_visits_url) }
      format.xml  { head :ok }
    end
  end
end
