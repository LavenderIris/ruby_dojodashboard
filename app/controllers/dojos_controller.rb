class DojosController < ApplicationController
  def index
  	@dojos = Dojo.all
  	render "dojos/index.html.erb"
  end
  
  def show_create_page
  	render "dojos/create_page.html.erb"
  end

  def create_dojo
  	dojo = Dojo.new(dojo_params)
  	dojo.save
  	redirect_to "/dojos"
  end

  private 
  def dojo_params
  	params.require(:dojo).permit(:branch, :street, :city, :state)
  end

end
