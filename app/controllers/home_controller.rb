class HomeController < ApplicationController
  def index
  	@users = User.filter(:usertype => "Professor")
  end
end
