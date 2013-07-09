class Enterprise < ActiveRecord::Base
  attr_accessible :description
   
  has_many :branches
  has_many :categories

  validates :description, presence: true, length: {maximum: 100}
end
