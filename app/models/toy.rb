class Toy < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
  end
  belongs_to :category
  belongs_to :user
  has_many :order_items
  has_many :carts, through: :order_items

  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  validates :price, presence: true
  validates :age, presence: true
  validates :condition, presence: true
end
