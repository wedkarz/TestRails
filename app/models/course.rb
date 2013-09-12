class Course < ActiveRecord::Base
  has_many :sides
  belongs_to :category
end
