class HomeController < ApplicationController
  def index
  	@users = User.search(params[:search])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
end
