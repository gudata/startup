class Admin::DistrictsController < Admin::BaseController
  # cancan
  load_resource :town, :parent => true
  load_resource :district, :through => :town

  # GET /districts
  # GET /districts.xml
  def index
    #    @districts = District.all
    @districts = @town.districts.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @districts }
    end
  end

  # GET /districts/1
  # GET /districts/1.xml
  def show
    #@district = District.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @district }
    end
  end

  # GET /districts/new
  # GET /districts/new.xml
  def new
    @district = District.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @district }
    end
  end

  # GET /districts/1/edit
  def edit
    #    @district = District.find(params[:id])
    # Town.find(id).district.find(123)
  end

  # POST /districts
  # POST /districts.xml
  def create
    #    @district = District.new(params[:district])
    @district = @town.districts.build(params[:district])

    #    raise @district.inpsect

    respond_to do |format|
      if @district.save
        format.html { redirect_to(edit_admin_town_district_path(@admin, @town, @district), :notice => 'District was successfully created.') }
        format.xml  { render :xml => @district, :status => :created, :location => @district }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @district.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /districts/1
  # PUT /districts/1.xml
  def update
    #    @district = District.find(params[:id])
    @district = @town.districts.find(params[:id])

    respond_to do |format|
      if @district.update_attributes(params[:district])
        format.html { redirect_to(edit_admin_town_district_path(@town, @district), :notice => 'District was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @district.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /districts/1
  # DELETE /districts/1.xml
  def destroy
    @district = District.find(params[:id])
    @district.destroy

    respond_to do |format|
      format.html { redirect_to(districts_url) }
      format.xml  { head :ok }
    end
  end
end