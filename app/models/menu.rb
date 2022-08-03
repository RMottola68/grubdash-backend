class Menu < ActiveRecord::Base
    has_many :meals
    has_many :liquors
    belongs_to :restaurant

    def get_meals
        self.meals
    end
end