defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]

  @char_map %{
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }
  def to_rna(dna) do
    dna_str = to_string dna
    dna_str_list = String.split(dna_str, "", trim: true)
    rna_str_list = Enum.map(dna_str_list, &(@char_map[&1]))
    to_charlist(Enum.join(rna_str_list))
  end

end
