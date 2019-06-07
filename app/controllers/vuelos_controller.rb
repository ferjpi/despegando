class VuelosController < ApplicationController
  before_action :set_passsanger, only: [:show, :index, :routes]
  def index
      @vuelo = Vuelo.search(vuelo_params)
      @promos = Promo.all
    end
    
    def show
      @vuelo = Vuelo.find_by(id: params[:id])
    end

    def new
      @vuelo = Vuelo.new
    end
    
    def create
      @vuelo = Vuelo.create(vuelo_create_params)
      if @vuelo
        redirect_to vuelos_routes_path, notice: "Vuelo creado"
      else
        render 'new', alert: "Hubo un error, intentalo de nuevo"
      end
    end

    def routes
      @vuelos = Vuelo.all
    end
    
    def promo
      @promo = Promo.new
    end

    def promo_create
      @promo = Promo.create(promo_params)
      if @promo
        redirect_to root_path, notice: "Promocion creada"
      else
        redirect_to vuelos_promo_path, alert: "Hubo un error, intentalo de nuevo"
      end
    end
    
    private
      def promo_params
        params.require(:promo).permit(:image, :description_package, :description, :description_value, :price_promo)
      end
      
      def vuelo_create_params
        params.require(:vuelo).permit(:departure, :destination, :passenger)
      end

      def vuelo_params
        params.permit(:departure, :destination, :passenger, :people)
      end
      
      def set_passsanger
        @people = params[:people]
      end
end
