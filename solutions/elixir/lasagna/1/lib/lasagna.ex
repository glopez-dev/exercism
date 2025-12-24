defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(time_in_oven) do
    Lasagna.expected_minutes_in_oven - time_in_oven
  end

  def preparation_time_in_minutes(lasagna_layers), do: lasagna_layers*2

  def total_time_in_minutes(lasagna_layers, time_in_oven) do
    Lasagna.preparation_time_in_minutes(lasagna_layers) + time_in_oven
  end

  def alarm, do: "Ding!"
end
