defmodule Cubes.Misc do
  def rotate90cw(side) do
	  side
    |> Enum.reverse()
    |> Enum.zip_with(&(&1))
  end

  def rotate90ccw(side) do
	  side
    |> Enum.zip_with(&(&1))
    |> Enum.reverse()
  end

  def rotate180(side) do
	  side
    |> Enum.map(&Enum.reverse/1)
    |> Enum.reverse()
  end
end
