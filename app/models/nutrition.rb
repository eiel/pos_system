class Nutrition < ActiveRecord::Base
  has_many :recipes
  has_many :menus, :through => :recipes
end