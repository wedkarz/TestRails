class SideType < ActiveRecord::Base
  has_many :sides
  has_many :meal_side_types
  has_many :meals, :through => :meal_side_types
end
