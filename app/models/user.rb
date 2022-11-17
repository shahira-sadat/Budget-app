class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 100 }

  has_many :groups, dependent: :delete_all
  has_many :spendings, dependent: :delete_all
end
