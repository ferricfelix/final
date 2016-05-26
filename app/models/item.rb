class Item < ActiveRecord::Base
  has_one :user
  has_many :employees, through: :users
  has_many :owners
  has_many :departments, :through => :owners

  has_one :manufacturer
  has_one :model
  has_one :purchase
end
