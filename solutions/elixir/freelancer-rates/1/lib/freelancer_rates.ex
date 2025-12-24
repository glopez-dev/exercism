defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0
  
  def apply_discount(before_discount, discount), do: before_discount * ((100 - discount) / 100)
  
  def monthly_rate(hourly_rate, discount) do
      (FreelancerRates.daily_rate(hourly_rate) * 22)
      |> FreelancerRates.apply_discount(discount)
      |> Kernel.ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    discounted_daily_rate = hourly_rate
      |> FreelancerRates.daily_rate()
      |> FreelancerRates.apply_discount(discount)

    days_in_budget = budget / discounted_daily_rate
    Float.floor(days_in_budget, 1)
  end
end
