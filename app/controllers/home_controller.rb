class HomeController < ApplicationController
  def index 			
  	
  	if(params[:addprof])	
    	current_user.addProfToSchedule(params[:addprof])
    elsif(params[:removeprof])
    	current_user.removeProfFromSchedule(params[:removeprof])
    end


  	@users = User.search(params[:search])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end
end
