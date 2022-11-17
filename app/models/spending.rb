class Spending < ApplicationRecord
  validates :amount, presence: true
  validates :name, presence: true, length: { maximum: 50 }

  belongs_to :user
  belongs_to :group
end
