class WelcomesController < ApplicationController
  def index
    @welcomes = Welcome.all.order(created_at: 'desc')
  end
end
