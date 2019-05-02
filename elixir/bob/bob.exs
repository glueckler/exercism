defmodule Bob do
  defp question?(input) do
    String.ends_with?(input, "?")
  end

  defp yelling?(input) do
    String.upcase(input) == input && String.downcase(input) != input
  end

  defp yell_question?(input) do
    question?(input) && yelling?(input)
  end

  defp empty?(input) do
    String.trim(input) == ""
  end

  def hey(input) do
    cond do
      empty?(input) -> "Fine. Be that way!"
      yell_question?(input) -> "Calm down, I know what I'm doing!"
      yelling?(input) -> "Whoa, chill out!"
      question?(input) -> "Sure."
      true -> "Whatever."
    end
  end
end
