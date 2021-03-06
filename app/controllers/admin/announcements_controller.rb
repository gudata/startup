class Admin::AnnouncementsController < Admin::BaseController
  layout "admin"
  # GET /admin/announcements
  # GET /admin/announcements.xml
  def index
    @announcements = Announcement.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /admin/announcements/1
  # GET /admin/announcements/1.xml
  def show
    @announcement = Announcement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @announcement }
    end
  end

  # GET /admin/announcements/new
  # GET /admin/announcements/new.xml
  def new
    @announcement = Announcement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @announcement }
    end
  end

  # GET /admin/announcements/1/edit
  def edit
    @announcement = Announcement.find(params[:id])
    
  end

  # POST /admin/announcements
  # POST /admin/announcements.xml
  def create
    @announcement = Announcement.new(params[:announcement])

    respond_to do |format|
      if @announcement.save
        format.html { redirect_to(admin_announcement_path(@announcement), :notice => 'Announcement was successfully created.') }
        format.xml  { render :xml => @announcement, :status => :created, :location => @announcement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @announcement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/announcements/1
  # PUT /admin/announcements/1.xml
  def update
    @announcement = Announcement.find(params[:id])

    respond_to do |format|
      if @announcement.update_attributes(params[:announcement])
        format.html { redirect_to(edit_admin_announcement_path(@announcement), :notice => 'Announcement was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @announcement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/announcements/1
  # DELETE /admin/announcements/1.xml
  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy

    respond_to do |format|
      format.html { redirect_to [:admin, @announcement] }
      format.xml  { head :ok }
    end
  end
end
