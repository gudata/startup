class Admin::QuartersController < Admin::BaseController
  # GET /quarters
  # GET /quarters.xml

  load_resource :town, :parent => true
  load_resource :district, :through => :town
  load_resource :quarter, :through => :district

  def index
    
    @quarters = @district.quarters

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @quarters }
    end
  end

  # GET /quarters/1
  # GET /quarters/1.xml
  def show
    #@quarter = Quarter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @quarter }
    end
  end

  # GET /quarters/new
  # GET /quarters/new.xml
  def new
    @quarter = Quarter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @quarter }
    end
  end

  # GET /quarters/1/edit
  def edit
    # @quarter = Quarter.find(params[:id])
  end

  # POST /quarters
  # POST /quarters.xml
  def create
    #@quarter = Quarter.new(params[:quarter])
    @quarter = @district.quarters.build(params[:quarter])
    respond_to do |format|
      if @quarter.save
        format.html { redirect_to(edit_admin_town_district_quarter_path(:district_id => @district.id.to_param, :id => @quarter.id.to_param), :notice => 'Quarter was successfully created.') }
        format.xml  { render :xml => @quarter, :status => :created, :location => @quarter }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @quarter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /quarters/1
  # PUT /quarters/1.xml
  def update
    # @quarter = Quarter.find(params[:id])
    @quarter = @district.quarters.find(params[:id])
    respond_to do |format|
      if @quarter.update_attributes(params[:quarter])
        format.html { redirect_to(edit_admin_town_district_quarter_path(:district_id => @district.id.to_param, :id => @quarter.id.to_param), :notice => 'Quarter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @quarter.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /quarters/1
  # DELETE /quarters/1.xml
  def destroy
    @quarter = Quarter.find(params[:id])
    @quarter.destroy

    respond_to do |format|
      format.html { redirect_to(quarters_url) }
      format.xml  { head :ok }
    end
  end
end