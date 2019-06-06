class Vuelo < ApplicationRecord
  has_and_belongs_to_many :vuelos

  def self.search(search)
    if search
      vuelo = Vuelo.find_by(departure: search[:departure]) && Vuelo.find_by(destination: search[:destination])
    else
      Vuelo.all
    end
  end

end
