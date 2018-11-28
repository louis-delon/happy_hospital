class Worker < ApplicationRecord
  has_many :shifts, dependent: :destroy
  validates :first_name, :status, :price, presence:true
end
