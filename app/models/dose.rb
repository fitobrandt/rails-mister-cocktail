class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  # Description/cocktail_id/ingredients have to exist
  validates :description, :cocktail_id, :ingredient_id, presence: true

  validates :cocktail, uniqueness: { scope: :ingredient }
end
