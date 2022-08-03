class Menu < ActiveRecord::Base
    has_many :meals
    has_many :liquors
    belongs_to :restaurant
    belongs_to :order

    def get_meals
        self.meals
    end
end