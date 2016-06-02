class Person < ActiveRecord::Base
  has_many :employees
  has_many :departments, through: :employees
  # person also has computers through user
  has_many :users
  has_many :items, through: :users
end
