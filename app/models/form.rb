class Form < ApplicationRecord
  validates :name, :email, :content, length: { in: 1..140 }
end
