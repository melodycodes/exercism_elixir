defmodule Teenager do
  def hey(input) do
    cond do
      silent?(input) -> "Fine. Be that way!"
      question?(input) -> "Sure."
      shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  def silent?(input) do
    String.strip(input) == ""
  end

  def question?(input) do
    String.ends_with?(input, "?")
  end

  def shouting?(input) do
    input == String.upcase(input) && String.match?(input, ~r/\p{L}/)
  end
end
