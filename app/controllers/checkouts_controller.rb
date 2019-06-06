class CheckoutsController < ApplicationController
  before_action :set_passenger, only: [:index, :new, :create]
  before_action :find_fly, only: [:index, :new, :create]

  def index
  end

  def show
  end

  def new
  end
  
  def create
    @link = @vuelo.user_flies.create!(user_id: current_user.id)
    if @link
      redirect_to vuelo_checkouts_path(@people), notice: "Vuelo confirmado"
    end
  end
  
  private
  def set_passenger
    @people = params[:people]
  end
  
  def find_fly
    @vuelo = Vuelo.find_by(id: params[:vuelo_id])
    end
end
