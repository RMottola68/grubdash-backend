class Order < ActiveRecord::Base
    has_many :menu
    has_many :meals, through: :menu

end