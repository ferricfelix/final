class Owner < ActiveRecord::Base
  belongs_to :department
  belongs_to :item
  belongs_to :type #this creates the foreign key in the Owner table

  validates :department_id, presence: true
  validates :item_id, presence: true
end
