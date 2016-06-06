class Person < ActiveRecord::Base
  has_many :employees
  has_many :departments, through: :employees

  validates :first_name, presence :true
  validates :last_name, presence :true
  validates :nickname, presence :true

end
