class HomeController < BaseController
  
  def index
    @users = User.all
  end

end
