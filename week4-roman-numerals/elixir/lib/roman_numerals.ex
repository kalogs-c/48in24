defmodule RomanNumerals do
  def parse(number, current_roman) when number >= 1000 do
    parse(number - 1000, current_roman <> "M")
  end

  def parse(number, current_roman) when number >= 500 do
    parse(number - 500, current_roman <> "D")
  end

  def parse(number, current_roman) when number >= 100 do
    parse(number - 100, current_roman <> "C")
  end

  def parse(number, current_roman) when number >= 50 do
    parse(number - 50, current_roman <> "L")
  end

  def parse(number, current_roman) when number >= 10 do
    parse(number - 10, current_roman <> "X")
  end

  def parse(number, current_roman) when number >= 5 do
    parse(number - 5, current_roman <> "V")
  end

  def parse(number, current_roman) when number >= 1 do
    parse(number - 1, current_roman <> "I")
  end

  def parse(0, current_roman), do: current_roman

  @doc """
  Convert the number to a roman number.
  """
  @spec numeral(pos_integer) :: String.t()
  def numeral(number) do
    parse(number, "")
    |> String.replace("IIII", "IV")
    |> String.replace("VIV", "IX")
    |> String.replace("XXXX", "XL")
    |> String.replace("LXL", "XC")
    |> String.replace("CCCC", "CD")
    |> String.replace("DCD", "CM")
  end
end
