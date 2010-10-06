class HomeController < ApplicationController
  
 # before_filter :init_towns

  def index
    @users = User.all
  end


  # private
  #def init_towns
  #   @towns = Town.all
  # end

end
