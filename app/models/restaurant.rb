class Restaurant < ActiveRecord::Base
    has_many :meals
    has_many :menus, through: :meals
end