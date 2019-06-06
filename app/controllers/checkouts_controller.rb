class CheckoutsController < ApplicationController
  before_action :set_passenger, only: [:index, :new]
  before_action :find_fly, only: [:index, :new]

  def index
  end

  def show
  end

  def new
  end
  
  def create
    # @user = @route.users
  end
  
  private
  def set_passenger
    @people = params[:people]
  end
  
  def find_fly
    @vuelo = Vuelo.find_by(id: params[:vuelo_id])
    end
end
