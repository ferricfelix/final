class User < ActiveRecord::Base
  # can equipment belong to multiple employee? In our model, no, equipment can only belong to a single employee
  # however, a single employee can have multiple pieces of equipment assigned to them
  belongs_to :employee
  belongs_to :item
  belong_to :type #this creates the foreign key in the User table
end
