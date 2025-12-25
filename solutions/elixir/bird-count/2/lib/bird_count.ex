defmodule BirdCount do
  def today(list) do 
    if length(list) == 0, do: nil, else: hd(list)
  end

  def increment_day_count(list) do
    if length(list) == 0, do: [1], else: [hd(list) +1 | tl(list)]
  end
  
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?(list) when hd(list) == 0, do: true
  def has_day_without_birds?([head | tail]) when head != 0, do: has_day_without_birds?(tail)

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)
  

  def busy_days(list), do: busy_days(list, 0)
  defp busy_days([], acc), do: acc
  defp busy_days(list, acc) do
    if hd(list) > 4, do: busy_days(tl(list), acc+1), else: busy_days(tl(list), acc) 
  end
end
