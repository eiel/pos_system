class Recipe < ActiveRecord::Base
  belongs_to :menu
  belongs_to :nutrition
end