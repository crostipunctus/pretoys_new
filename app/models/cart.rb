class Cart < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :toys, through: :order_items

end
