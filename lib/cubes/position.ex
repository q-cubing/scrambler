defmodule Cubes.Position do
  @behaviour Access
  defdelegate get(coin, key, default), to: Map
  defdelegate fetch(coin, key), to: Map
  defdelegate get_and_update(coin, key, func), to: Map
  defdelegate pop(coin, key), to: Map

  defstruct x: 1,
            y: 1,
            z: 1

  def to_list(position) do
    [position.x, position.y, position.z]
  end

  def to_keyword_list(position) do
    [x: position.x, y: position.y, z: position.z]
  end

  def from_list([x, y, z]) do
    %Cubes.Position{x: x, y: y, z: z}
  end

  def rotate(position, axis, angle) do
    [{key_a, a}, {key_b, b}] =
      position
      |> to_keyword_list()
      |> Enum.filter(fn {k, _v} -> k != axis end)

    [a, b] =
      if angle == 180 do
        [[a, b], [-b, -a]]
      else
        [[-a, -b], [b, a]]
      end
      |> then(fn matrix ->
        case angle do
          90 -> Cubes.Misc.rotate90ccw(matrix)
          -90 -> Cubes.Misc.rotate90cw(matrix)
          180 -> Cubes.Misc.rotate180(matrix)
        end
      end)
      |> hd()

    Map.merge(position, %{key_a => a, key_b => b})
  end
end
