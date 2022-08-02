class Menu < ActiveRecord::Base
    has_many :meals
    belongs_to :restaurant
end