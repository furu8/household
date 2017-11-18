class WelcomesController < ApplicationController
  before_action :set_welcome, only: [:edit, :show, :update, :destroy]
  before_action :set_welcomes, only: [:index, :show]
  
  def index
  end

  def show 
  end
    
  def new
    @welcome = Welcome.new
  end
  
  def create
    month = params[:month]
    puts month.to_i
    date = params[:date]
    puts date.to_i
    week = params[:week]
    puts week.to_i
    @welcome = Welcome.new(welcome_params)      
    @welcome.month = month
    @welcome.date = date    
    @welcome.week = week        
    if @welcome.save
      redirect_to welcomes_path 
    else 
      render 'new'
    end
  end

  def update
    if @welcome.update(welcome_params)
      redirect_to welcome_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @welcome.destroy
    redirect_to welcomes_path
  end

  private
    def welcome_params
      params.require(:welcome).permit(:month, :date, :week, :money)
    end
    
    def set_welcome
      @welcome = Welcome.find(params[:id])
    end

    def set_welcomes
      @welcomes = Welcome.all
    end
end
