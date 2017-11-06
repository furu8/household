class WelcomesController < ApplicationController

  def index
    @welcomes = Welcome.all
  end

  def new
  
  end

  def create
    @welcome = Welcome.new(welcome_params)
    @welcome.save
    redirect_to welcomes_path
  end

  private
  def welcome_params
    params.require(:welcome).permit(:week, :money)
  end

end
