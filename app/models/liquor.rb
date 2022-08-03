class Liquor < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :menu
    belongs_to :order
end