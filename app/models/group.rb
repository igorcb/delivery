class Group < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { maximum: 100 }
                                          
end
