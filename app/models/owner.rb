class Owner < ActiveRecord::Base
  belongs_to :department
  belongs_to :item
  belongs_to :type #this creates the foreign key in the Owner table
end
