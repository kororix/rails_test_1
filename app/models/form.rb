class Form < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 140 }
  validates :email, presence: true
  validates :email, length: { maximum: 140 }
  validates :content, presence: true
  validates :content, length: { maximum: 140 }
end
