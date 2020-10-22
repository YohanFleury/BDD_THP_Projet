class DogStroll < ApplicationRecord
  has_many :dogs
  belongs_to :stroll
end
