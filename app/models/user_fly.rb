class UserFly < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :vuelos
  
end
