class UsersController < ApplicationController
  before_filter :authenticate_user!
  # http://github.com/fortuity/rails3-mongoid-devise/wiki/Tutorial-%28Walkthrough%29
  def show
    @user = User.find(params[:id])
  end

end
