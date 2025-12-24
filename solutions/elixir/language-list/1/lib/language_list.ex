defmodule LanguageList do
  def new, do: []

  def add(list, language), do: [language | list]
  
  def remove(list), do: Kernel.tl(list)

  def first(list), do: Kernel.hd(list)
  
  def count(list), do: Kernel.length(list)

  def functional_list?(list) do
    Enum.any?(list, fn x -> x == "Elixir" end)
  end
end
