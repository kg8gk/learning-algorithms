defmodule BaseSort do
  def selection([]), do: []
  def selection([h|t]), do: selection(t, h, [])

  defp selection([], min, rest), do: [min | selection rest]

  defp selection([h|t], min, rest) do
    if h < min do
      selection t, h, [min | rest]
    else
      selection t, min, [h | rest]
    end
  end
end

