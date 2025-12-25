defmodule KitchenCalculator do
  def get_volume({_unit, volume}), do: volume

  def to_milliliter({unit, volume}) do
    volume_ml = case unit do
      :milliliter -> volume
      :cup -> volume*240
      :fluid_ounce -> volume*30
      :teaspoon -> volume*5
      :tablespoon -> volume*15
    end

    {:milliliter, volume_ml}
  end

  def from_milliliter({:milliliter, unit_ml}, :milliliter), do: {:milliliter, unit_ml}
  def from_milliliter({:milliliter, unit_ml}, :cup), do: {:cup, unit_ml/240}
  def from_milliliter({:milliliter, unit_ml}, :fluid_ounce), do: {:fluid_ounce, unit_ml/30}
  def from_milliliter({:milliliter, unit_ml}, :teaspoon), do: {:teaspoon, unit_ml/5}
  def from_milliliter({:milliliter, unit_ml}, :tablespoon), do: {:tablespoon, unit_ml/15}

  def convert(volume_pair, unit) do
    volume_pair
      |> to_milliliter()
      |> from_milliliter(unit)
  end
end
