class TownsController < BaseController
  
  def show
    @town = Town.find(params[:id])
    session[:current_town_id]  = @town.id
  end

end
