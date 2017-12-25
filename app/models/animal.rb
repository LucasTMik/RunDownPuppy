class Animal < ApplicationRecord
  has_one :adoption
  has_many :comments
end
