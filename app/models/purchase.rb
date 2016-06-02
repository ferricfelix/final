class Purchase < ActiveRecord::Base
  has_many :item
end
