class Category < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
  end
  has_many :toys
  validates_uniqueness_of :name
end