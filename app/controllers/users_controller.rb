class UsersController < ApplicationController
  def index
  end

  def show
    id = params[:id]
    @user = User.find(id)
  end
end
