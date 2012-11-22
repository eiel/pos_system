class Menu < ActiveRecord::Base

  has_many :recipes
  has_many :nutritions, :through => :recipes

  def nutrition_protein
    nutrition_sum_base(:protein)
  end

  def nutrition_lipid
    nutrition_sum_base(:lipid)
  end

  def nutrition_carbohydrate
    nutrition_sum_base(:carbohydrate)
  end

  def nutrition_calcium
    nutrition_sum_base(:calcium)
  end

  def nutrition_salt_equivalents
    nutrition_sum_base(:salt_equivalents)
  end

  def nutrition_energy_kcal
    nutrition_sum_base(:energy_kcal)
  end

  def to_json
    {
      menu_name:        menu_name,
      protein:          nutrition_protein,
      lipid:            nutrition_lipid,
      carbohydrate:     nutrition_carbohydrate,
      calcium:          nutrition_calcium,
      salt_equivalents: nutrition_salt_equivalents,
      energy_kcal:      nutrition_energy_kcal
    }
  end

  private
  def nutrition_sum_base(method_name)
    recipes.map { |recipe| recipe.nutrition.send(method_name)*recipe.amount }.sum
  end
end