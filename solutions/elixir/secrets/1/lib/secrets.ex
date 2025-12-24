defmodule Secrets do
  def secret_add(secret), do: &(&1 + secret)

  def secret_subtract(secret), do: &(&1 - secret)
  
  def secret_multiply(secret), do: &(&1 * secret)
  
  def secret_divide(secret), do: fn x -> div(x, secret) end
  
  def secret_and(secret), do: fn x -> Bitwise.band(x, secret) end
  
  def secret_xor(secret), do: fn x -> Bitwise.bxor(x, secret) end

  def secret_combine(secret_function1, secret_function2) do
      fn x -> x |> then(secret_function1) |> then(secret_function2) end
  end
end
