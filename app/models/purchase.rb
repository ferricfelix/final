class Purchase < ActiveRecord::Base
  has_many :item

  validates :order, uniqueness: { case_sensitive: false }
end
