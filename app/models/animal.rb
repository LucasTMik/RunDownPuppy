class Animal < ApplicationRecord
  belongs_to :adoption
  has_many :comments
end
