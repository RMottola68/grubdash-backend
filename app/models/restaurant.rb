class Restaurant < ActiveRecord::Base
    has_many :meals
    has_one :menu
    has_many :liquors, through: :menus
    

    def get_menu
        self.menu
    end

end