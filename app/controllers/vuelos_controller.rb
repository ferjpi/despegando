# require "mini_magick_helper.rb"

class VuelosController < ApplicationController
  before_action :set_passsanger, only: [:show, :index, :routes]
  before_action :set_vuelo, only: [:show, :edit, :update, :destroy]
  before_action :set_promo, only: [:edit_promo, :update_promo, :destroy_promo]

  def index
      set_vuelos
      @vuelo = Vuelo.search(vuelo_params)
      @promos = Promo.all
    end
    
    def show
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
    
    def edit
    end
    
    def update
      if @vuelo.update(vuelo_create_params)
        redirect_to vuelos_routes_path, notice: "Vuelo Actualizado"
      else
        redirect_to edit_vuelo_path, alert: "Ooh! Hubo un error"
      end
    end

    def destroy
      if @vuelo.destroy
        redirect_to vuelos_routes_path, notice: "Vuelo Borrado"
      end
    end

    def routes
      set_vuelos
    end
    
    def promo
      set_vuelos
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
    
    def edit_promo
      set_vuelos
    end
    
    def update_promo
      if @promo.update(promo_params)
        redirect_to root_path, notice: "Promocion Actualizada"
      else
        redirect_to vuelos_promo_path, alert: "Hubo un error, intentalo de nuevo"
      end
    end
    
    def destroy_promo
      if @promo.destroy
        redirect_to root_path, notice: "Promocion Borrada"
      else
        redirect_to root_path, alert: "Ooh! Hubo un error"
      end
    end
    
    private
      def set_vuelos
        @vuelos = Vuelo.all
      end

      def set_promo
        @promo = Promo.find_by(id: params[:id])
      end

      def set_vuelo
        @vuelo = Vuelo.find_by(id: params[:id])
      end

      def promo_params
        params.require(:promo).permit(:image, :description_package, :description, :description_value, :price_promo, :vuelo_id)
      end
      
      def vuelo_create_params
        params.require(:vuelo).permit(:departure, :destination, :passenger, :price)
      end

      def vuelo_params
        params.permit(:departure, :destination, :passenger, :people)
      end
      
      def set_passsanger
        @people = params[:people]
      end
end
