defmodule BaseSort do

  # 选择排序
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

  # 插入排序
  def insertion(array), do: List.foldl(array, [], &insert/2)
  defp insert(key, []), do: [key]
  defp insert(key, array = [h|t]) do
    if key < h do
      [key | array]
    else
      [h | insert(key, t)]
    end
  end 
end

