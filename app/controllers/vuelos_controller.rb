class VuelosController < ApplicationController
  before_action :set_passsanger, only: [:show, :index]
  def index
      @vuelo = Vuelo.search(vuelo_params)
    end
    
    def show
      @vuelo = Vuelo.find_by(id: params[:id])
    end
    
    private
    
    def vuelo_params
      params.permit(:departure, :destination, :passenger, :people)
    end
    
    def set_passsanger
      @people = params
    end
end
