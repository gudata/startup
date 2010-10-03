class Admin::LanguagesController < Admin::BaseController
  layout "admin"
  # GET /admin/languages
  # GET /admin/languages.xml
  def index
    @admin_languages = Admin::Language.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_languages }
    end
  end

  # GET /admin/languages/1
  # GET /admin/languages/1.xml
  def show
    @admin_language = Admin::Language.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_language }
    end
  end

  # GET /admin/languages/new
  # GET /admin/languages/new.xml
  def new
    @admin_language = Admin::Language.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_language }
    end
  end

  # GET /admin/languages/1/edit
  def edit
    @admin_language = Admin::Language.find(params[:id])
  end

  # POST /admin/languages
  # POST /admin/languages.xml
  def create
    @admin_language = Admin::Language.new(params[:admin_language])

    respond_to do |format|
      if @admin_language.save
        format.html { redirect_to(@admin_language, :notice => 'Language was successfully created.') }
        format.xml  { render :xml => @admin_language, :status => :created, :location => @admin_language }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/languages/1
  # PUT /admin/languages/1.xml
  def update
    @admin_language = Admin::Language.find(params[:id])

    respond_to do |format|
      if @admin_language.update_attributes(params[:admin_language])
        format.html { redirect_to(@admin_language, :notice => 'Language was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/languages/1
  # DELETE /admin/languages/1.xml
  def destroy
    @admin_language = Admin::Language.find(params[:id])
    @admin_language.destroy

    respond_to do |format|
      format.html { redirect_to(admin_languages_url) }
      format.xml  { head :ok }
    end
  end
end
