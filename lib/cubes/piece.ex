defmodule Cubes.Piece do
  @behaviour Access
  defdelegate get(coin, key, default), to: Map
  defdelegate fetch(coin, key), to: Map
  defdelegate get_and_update(coin, key, func), to: Map
  defdelegate pop(coin, key), to: Map

	defstruct colors: [],
            position: []
end
