class VuelosController < ApplicationController
  def index
      @vuelo = Vuelo.search(vuelo_params)
  end

  def show
    @vuelo = Vuelo.find_by(id: params[:id])
  end

  private

    def vuelo_params
      params.permit(:departure, :destination, :passenger)
    end
end
