defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map

  defp words_to_map(word, acc) do
    Map.update(acc, word, 1, &(&1 + 1))
  end

  def count(sentence) do
    words = String.split(String.downcase(sentence), ~r/[^A-Za-z1-9\-ö]/, trim: true)
    Enum.reduce(words, %{}, &words_to_map/2)
  end
end
