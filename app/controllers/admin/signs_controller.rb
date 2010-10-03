class Admin::SignsController < Admin::BaseController
  layout "admin"
  # GET /admin/signs
  # GET /admin/signs.xml
  def index
    @admin_signs = Admin::Sign.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_signs }
    end
  end

  # GET /admin/signs/1
  # GET /admin/signs/1.xml
  def show
    @admin_sign = Admin::Sign.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_sign }
    end
  end

  # GET /admin/signs/new
  # GET /admin/signs/new.xml
  def new
    @admin_sign = Admin::Sign.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_sign }
    end
  end

  # GET /admin/signs/1/edit
  def edit
    @admin_sign = Admin::Sign.find(params[:id])
  end

  # POST /admin/signs
  # POST /admin/signs.xml
  def create
    @admin_sign = Admin::Sign.new(params[:admin_sign])

    respond_to do |format|
      if @admin_sign.save
        format.html { redirect_to(@admin_sign, :notice => 'Sign was successfully created.') }
        format.xml  { render :xml => @admin_sign, :status => :created, :location => @admin_sign }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_sign.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/signs/1
  # PUT /admin/signs/1.xml
  def update
    @admin_sign = Admin::Sign.find(params[:id])

    respond_to do |format|
      if @admin_sign.update_attributes(params[:admin_sign])
        format.html { redirect_to(@admin_sign, :notice => 'Sign was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_sign.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/signs/1
  # DELETE /admin/signs/1.xml
  def destroy
    @admin_sign = Admin::Sign.find(params[:id])
    @admin_sign.destroy

    respond_to do |format|
      format.html { redirect_to(admin_signs_url) }
      format.xml  { head :ok }
    end
  end
end
