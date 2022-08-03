class Restaurant < ActiveRecord::Base
    has_many :meals
    has_one :menu
    has_many :liquors, through: :menus
    
    def self.get_restaurant_id(restid)
        self.all[restid-1]
    end
    

    def get_menu
        self.menu
    end

end