class Meal < ActiveRecord::Base
  belongs_to :course
  has_many :meal_side_types
  has_many :side_types, :through => :meal_side_types
  belongs_to :category
  has_many :orders
end
