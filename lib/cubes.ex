defmodule Cubes do
  @behaviour Access
  defdelegate get(coin, key, default), to: Map
  defdelegate fetch(coin, key), to: Map
  defdelegate get_and_update(coin, key, func), to: Map
  defdelegate pop(coin, key), to: Map

  defstruct size: 1,
            pieces: [
              %Cubes.Piece{
                colors: [{"orange", "red"}, {"green", "blue"}, {"white", "yellow"}],
                position: Cubes.Position.from_list([0, 0, 0])
              }
            ]

  defp swap([a, b, c], :h), do: [b, a, c]
  defp swap([a, b, c], :m), do: [c, b, a]
  defp swap([a, b, c], :l), do: [a, c, b]
  defp swap(colors, :n), do: colors

  def apply(moves, cube) do
    moves
    |> Enum.reduce(cube, &rotate(&2, &1))
  end

  defp rotate(cube, side) do
    {{axis, move_position}, color_swap, angle} =
      case side do
        :R -> {{:x, [1]}, :l, 90}
        :"R'" -> {{:x, [1]}, :l, -90}
        :R2 -> {{:x, [1]}, :n, 180}
        :Rw -> {{:x, [1/2, 1]}, :l, 90}
        :"Rw'" -> {{:x, [1/2, 1]}, :l, -90}
        :Rw2 -> {{:x, [1/2, 1]}, :n, 180}
        :U -> {{:z, [1]}, :h, 90}
        :"U'" -> {{:z, [1]}, :h, -90}
        :U2 -> {{:z, [1]}, :n, 180}
        :Uw -> {{:z, [1/2, 1]}, :h, 90}
        :"Uw'" -> {{:z, [1/2, 1]}, :h, -90}
        :Uw2 -> {{:z, [1/2, 1]}, :n, 180}
        :F -> {{:y, [1]}, :m, -90}
        :"F'" -> {{:y, [1]}, :m, 90}
        :F2 -> {{:y, [1]}, :n, 180}
        :Fw -> {{:y, [1/2, 1]}, :m, -90}
        :"Fw'" -> {{:y, [1/2, 1]}, :m, 90}
        :Fw2 -> {{:y, [1/2, 1]}, :n, 180}
        :L -> {{:x, [-1]}, :l, -90}
        :"L'" -> {{:x, [-1]}, :l, 90}
        :L2 -> {{:x, [-1]}, :n, 180}
        :D -> {{:z, [-1]}, :h, -90}
        :"D'" -> {{:z, [-1]}, :h, 90}
        :D2 -> {{:z, [-1]}, :n, 180}
        :B -> {{:y, [-1]}, :m, 90}
        :"B'" -> {{:y, [-1]}, :m, -90}
        :B2 -> {{:y, [-1]}, :n, 180}
        :M -> {{:x, [0]}, :l, 90}
        :"M'" -> {{:x, [0]}, :l, -90}
        :M2 -> {{:x, [0]}, :n, 180}
      end

    pieces =
      cube.pieces
      |> Enum.map(fn piece ->
        if piece.position[axis] in move_position do
          piece
          |> Map.merge(%{
            position: Cubes.Position.rotate(piece.position, axis, angle),
            colors: swap(piece.colors, color_swap)
          })
        else
          piece
        end
      end)

    %Cubes{size: cube.size, pieces: pieces}
  end

  def cube(type) do
    cond do
	    type in ["2x2", "3x3", "4x4"] ->
		    Cubes.WCA.cube(type)
      type in ["3x3x2", "3x3x4"] ->
        Cubes.NxN.cube(type)
    end
  end
end
