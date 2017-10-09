class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  	render "dojos/index.html.erb"
  end
end
