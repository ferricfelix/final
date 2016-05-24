class Employee < ActiveRecord::Base
  belongs_to :employee
  belongs_to :department
  has_many :users
  has_many :items, through: :users
end
