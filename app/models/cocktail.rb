class Cocktail < ApplicationRecord
  # When you delete a cocktail, you should delete associated doses
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true, presence: true
end
