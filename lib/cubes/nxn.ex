defmodule Cubes.NxN do
  @c3x3x2 %Cubes{
    size: "3x3x2",
    pieces: [
      %Cubes.Piece{
        colors: ["orange", "blue", "white"],
        position: Cubes.Position.from_list([-1, -1, 1])
      },
      %Cubes.Piece{
        colors: [nil, "blue", "white"],
        position: Cubes.Position.from_list([0, -1, 1])
      },
      %Cubes.Piece{
        colors: ["red", "blue", "white"],
        position: Cubes.Position.from_list([1, -1, 1])
      },
      %Cubes.Piece{
        colors: ["orange", nil, "white"],
        position: Cubes.Position.from_list([-1, 0, 1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "white"],
        position: Cubes.Position.from_list([0, 0, 1])
      },
      %Cubes.Piece{
        colors: ["red", nil, "white"],
        position: Cubes.Position.from_list([1, 0, 1])
      },
      %Cubes.Piece{
        colors: ["orange", "green", "white"],
        position: Cubes.Position.from_list([-1, 1, 1])
      },
      %Cubes.Piece{
        colors: [nil, "green", "white"],
        position: Cubes.Position.from_list([0, 1, 1])
      },
      %Cubes.Piece{
        colors: ["red", "green", "white"],
        position: Cubes.Position.from_list([1, 1, 1])
      },
      %Cubes.Piece{
        colors: ["orange", "blue", "yellow"],
        position: Cubes.Position.from_list([-1, -1, -1])
      },
      %Cubes.Piece{
        colors: [nil, "blue", "yellow"],
        position: Cubes.Position.from_list([0, -1, -1])
      },
      %Cubes.Piece{
        colors: ["red", "blue", "yellow"],
        position: Cubes.Position.from_list([1, -1, -1])
      },
      %Cubes.Piece{
        colors: ["orange", nil, "yellow"],
        position: Cubes.Position.from_list([-1, 0, -1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "yellow"],
        position: Cubes.Position.from_list([0, 0, -1])
      },
      %Cubes.Piece{
        colors: ["red", nil, "yellow"],
        position: Cubes.Position.from_list([1, 0, -1])
      },
      %Cubes.Piece{
        colors: ["orange", "green", "yellow"],
        position: Cubes.Position.from_list([-1, 1, -1])
      },
      %Cubes.Piece{
        colors: [nil, "green", "yellow"],
        position: Cubes.Position.from_list([0, 1, -1])
      },
      %Cubes.Piece{
        colors: ["red", "green", "yellow"],
        position: Cubes.Position.from_list([1, 1, -1])
      },
    ]
  }

  def cube(size) do
    case size do
	    "3x3x2" -> @c3x3x2
    end
  end
end
