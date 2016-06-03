class Person < ActiveRecord::Base
  has_many :employees
  has_many :departments, through: :employees
end
