class Employee < ActiveRecord::Base
  belongs_to :person
  belongs_to :department
end
