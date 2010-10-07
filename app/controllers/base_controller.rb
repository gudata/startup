class BaseController < ApplicationController
  before_filter :init_towns

  private
  def init_towns
    @towns = Town.where(:main_city => true).asc(:name).all
  end
end
