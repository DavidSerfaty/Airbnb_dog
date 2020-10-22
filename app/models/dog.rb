class Dog < ApplicationRecord
  has_many :strolls, dependent: :destroy
  has_many :dogsitters, through: :stroll
  belongs_to :city
end
