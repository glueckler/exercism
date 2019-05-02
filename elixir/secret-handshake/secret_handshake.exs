defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  use Bitwise

  def handshake_reducer(binary, acc, code) do
    handshakes = %{
      1 => "wink",
      2 => "double blink",
      4 => "close your eyes",
      8 => "jump"
    }

    cond do
      (code &&& binary) == binary -> acc ++ [handshakes[binary]]
      true -> acc
    end
  end

  def build_handshake_wo_flip(code) do
    list_of_secrets = [1, 2, 4, 8]
    Enum.reduce(list_of_secrets, [], fn x, acc -> handshake_reducer(x, acc, code) end)
  end

  def flip_handshake_if(code, handshake) do
    cond do
      (code &&& 16) == 16 -> Enum.reverse(handshake)
      true -> handshake
    end
  end

  def commands(code) do
    initial_shake = build_handshake_wo_flip(code)
    flip_handshake_if(code, initial_shake)
  end
end
