class Department < ActiveRecord::Base
  has_many :employees
  has_many :persons, through: :employees

  has_many :owners
  has_many :items, :through => :owners

  validates :name, presence :true

end
