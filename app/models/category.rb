class Category < ActiveRecord::Base
  attr_accessible :description

  belongs_to :enterprise
  has_many :products

  validates :description, presence: true
  validates :enterprise_id, presence: true
end
