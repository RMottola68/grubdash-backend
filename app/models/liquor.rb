class Liquor < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :menu
end