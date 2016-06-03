class Item < ActiveRecord::Base
  has_many :users
  has_many :employees, through: :users
  has_many :owners
  has_many :departments, :through => :owners

  belongs_to :manufacturer
  belongs_to :model
  belongs_to :purchase
end
