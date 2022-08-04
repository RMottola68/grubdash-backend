class Restaurant < ActiveRecord::Base
    has_many :meals
    has_one :menu
    

    def get_menu
        self.menu
    end

end