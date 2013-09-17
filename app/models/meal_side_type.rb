class MealSideType < ActiveRecord::Base
  belongs_to :meal
  belongs_to :side_type
end