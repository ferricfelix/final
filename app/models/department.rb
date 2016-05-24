class Department < ActiveRecord::Base
  has_many :employees
  has_many :persons, through: :employees
  # has_many :persons, :through => :employees

end
