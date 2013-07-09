class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price

  belongs_to :category
  has_one :enterprise, :through => :category

  validates :category_id, presence: true
  validates :name, presence: true, length: { maximum: 120 }
  validates :price, presence: true
end
