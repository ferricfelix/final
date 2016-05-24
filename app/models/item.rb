class Item < ActiveRecord::Base
  has_one :user
  has_one :employee, through: :users
end
