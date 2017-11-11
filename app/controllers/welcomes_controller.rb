class WelcomesController < ApplicationController

    def index
        @welcomes = Welcome.all
      end
    
      def new
        @welcome = Welcome.new
      end

      def edit
        @welcome = Welcome.find(params[:id])
      end
    
      def create
        month = params[:month]
        puts month.to_i
        date = params[:date]
        puts date.to_i
        @welcome = Welcome.new(welcome_params)      
        @welcome.month = month
        @welcome.date = date        
        if @welcome.save
          redirect_to welcomes_path
        else 
          render 'new'
        end
      end
    
      def update
        @welcome = Welcome.find(params[:id])
        if @welcome.update(welcome_params)
          redirect_to welcomes_path
        else
          render 'edit'
        end
      end

      def destroy
        @welcome = Welcome.find(params[:id])
        @welcome.destroy
        redirect_to welcomes_path
      end

      private
      def welcome_params
        params.require(:welcome).permit(:month, :date, :week, :money)
      end

end
