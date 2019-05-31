class VuelosController < ApplicationController
  def index
    @vuelos = Vuelo.all
  end
end
