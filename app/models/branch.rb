class Branch < ActiveRecord::Base
  attr_accessible :description, :cnpj, :adress, :number_adress, :complement, :district, :city, :state, :zip

  belongs_to :enterprise
  
  validates :description, presence: true, length: { maximum: 100 }
  validates :cnpj, presence: true, length: { is: 14 }
  validates :adress, presence: true, length: { maximum: 100 }
  validates :number_adress, presence: true, length: { maximum: 20 }
  validates :district, presence: true, length: { maximum: 60 }
  validates :city, presence: true, length: { maximum: 60 }
  validates :state, presence: true, length: { maximum: 2 }
  validates :zip, presence: true, length: { maximum: 8 }
  validates :enterprise_id, presence: true


end
