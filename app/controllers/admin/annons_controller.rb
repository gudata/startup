class Admin::AnnonsController < ApplicationController
  # GET /admin/annons
  # GET /admin/annons.xml
  def index
    @admin_annons = Admin::Annon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_annons }
    end
  end

  # GET /admin/annons/1
  # GET /admin/annons/1.xml
  def show
    @admin_annon = Admin::Annon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_annon }
    end
  end

  # GET /admin/annons/new
  # GET /admin/annons/new.xml
  def new
    @admin_annon = Admin::Annon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_annon }
    end
  end

  # GET /admin/annons/1/edit
  def edit
    @admin_annon = Admin::Annon.find(params[:id])
  end

  # POST /admin/annons
  # POST /admin/annons.xml
  def create
    @admin_annon = Admin::Annon.new(params[:admin_annon])

    respond_to do |format|
      if @admin_annon.save
        format.html { redirect_to(@admin_annon, :notice => 'Annon was successfully created.') }
        format.xml  { render :xml => @admin_annon, :status => :created, :location => @admin_annon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_annon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/annons/1
  # PUT /admin/annons/1.xml
  def update
    @admin_annon = Admin::Annon.find(params[:id])

    respond_to do |format|
      if @admin_annon.update_attributes(params[:admin_annon])
        format.html { redirect_to(@admin_annon, :notice => 'Annon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_annon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/annons/1
  # DELETE /admin/annons/1.xml
  def destroy
    @admin_annon = Admin::Annon.find(params[:id])
    @admin_annon.destroy

    respond_to do |format|
      format.html { redirect_to(admin_annons_url) }
      format.xml  { head :ok }
    end
  end
end
