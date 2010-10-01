class Admin::AnnouncementsController < Admin::BaseController
  layout "admin", :except => [:help]
  # GET /admin/announcements
  # GET /admin/announcements.xml
  def index
    @admin_announcements = Admin::Announcement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_announcements }
    end
  end

  # GET /admin/announcements/1
  # GET /admin/announcements/1.xml
  def show
    @admin_announcement = Admin::Announcement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_announcement }
    end
  end

  # GET /admin/announcements/new
  # GET /admin/announcements/new.xml
  def new
    @admin_announcement = Admin::Announcement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_announcement }
    end
  end

  # GET /admin/announcements/1/edit
  def edit
    @admin_announcement = Admin::Announcement.find(params[:id])
  end

  # POST /admin/announcements
  # POST /admin/announcements.xml
  def create
    @admin_announcement = Admin::Announcement.new(params[:admin_announcement])

    respond_to do |format|
      if @admin_announcement.save
        format.html { redirect_to(@admin_announcement, :notice => 'Announcement was successfully created.') }
        format.xml  { render :xml => @admin_announcement, :status => :created, :location => @admin_announcement }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_announcement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/announcements/1
  # PUT /admin/announcements/1.xml
  def update
    @admin_announcement = Admin::Announcement.find(params[:id])

    respond_to do |format|
      if @admin_announcement.update_attributes(params[:admin_announcement])
        format.html { redirect_to(@admin_announcement, :notice => 'Announcement was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_announcement.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/announcements/1
  # DELETE /admin/announcements/1.xml
  def destroy
    @admin_announcement = Admin::Announcement.find(params[:id])
    @admin_announcement.destroy

    respond_to do |format|
      format.html { redirect_to(admin_announcements_url) }
      format.xml  { head :ok }
    end
  end
end
