class Item < ActiveRecord::Base
  has_many :users, dependent: :destroy
  has_many :employees, through: :users
  has_many :owners
  has_many :departments, :through => :owners

  belongs_to :manufacturer
  belongs_to :model
  belongs_to :purchase

  # could also validate uniqueness here
  validates :serial, presence: true 
  validates :serial, uniqueness: { case_sensitive: false }



end
