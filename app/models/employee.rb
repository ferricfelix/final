class Employee < ActiveRecord::Base
  belongs_to :person
  belongs_to :department

   # employee also has computers through user
  has_many :users
  has_many :items, through: :users
end
