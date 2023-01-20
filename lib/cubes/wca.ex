defmodule Cubes.WCA do
  @wca2x2 %Cubes{
    size: "2x2",
    pieces: [
      %Cubes.Piece{
        colors: ["orange", "blue", "white"],
        position: Cubes.Position.from_list([-1, -1, 1])
      },
      %Cubes.Piece{
        colors: ["red", "blue", "white"],
        position: Cubes.Position.from_list([1, -1, 1])
      },
      %Cubes.Piece{
        colors: ["orange", "green", "white"],
        position: Cubes.Position.from_list([-1, 1, 1])
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
        colors: ["red", "blue", "yellow"],
        position: Cubes.Position.from_list([1, -1, -1])
      },
      %Cubes.Piece{
        colors: ["orange", "green", "yellow"],
        position: Cubes.Position.from_list([-1, 1, -1])
      },
      %Cubes.Piece{
        colors: ["red", "green", "yellow"],
        position: Cubes.Position.from_list([1, 1, -1])
      }
    ]
  }

  @wca3x3 %Cubes{
    size: "3x3",
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
        colors: ["orange", "blue", nil],
        position: Cubes.Position.from_list([-1, -1, 0])
      },
      %Cubes.Piece{
        colors: [nil, "blue", nil],
        position: Cubes.Position.from_list([0, -1, 0])
      },
      %Cubes.Piece{
        colors: ["red", "blue", nil],
        position: Cubes.Position.from_list([1, -1, 0])
      },
      %Cubes.Piece{
        colors: ["orange", nil, nil],
        position: Cubes.Position.from_list([-1, 0, 0])
      },
      %Cubes.Piece{
        colors: [nil, nil, nil],
        position: Cubes.Position.from_list([0, 0, 0])
      },
      %Cubes.Piece{
        colors: ["red", nil, nil],
        position: Cubes.Position.from_list([1, 0, 0])
      },
      %Cubes.Piece{
        colors: ["orange", "green", nil],
        position: Cubes.Position.from_list([-1, 1, 0])
      },
      %Cubes.Piece{
        colors: [nil, "green", nil],
        position: Cubes.Position.from_list([0, 1, 0])
      },
      %Cubes.Piece{
        colors: ["red", "green", nil],
        position: Cubes.Position.from_list([1, 1, 0])
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

  @wca4x4 %Cubes{
    size: "4x4",
    pieces: [
      %Cubes.Piece{
        colors: ["orange", "blue", "white"],
        position: Cubes.Position.from_list([-1, -1, 1])
      },
      %Cubes.Piece{
        colors: [nil, "blue", "white"],
        position: Cubes.Position.from_list([-1/2, -1, 1])
      },
      %Cubes.Piece{
        colors: [nil, "blue", "white"],
        position: Cubes.Position.from_list([1/2, -1, 1])
      },
      %Cubes.Piece{
        colors: ["red", "blue", "white"],
        position: Cubes.Position.from_list([1, -1, 1])
      },
      %Cubes.Piece{
        colors: ["orange", nil, "white"],
        position: Cubes.Position.from_list([-1, -1/2, 1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "white"],
        position: Cubes.Position.from_list([-1/2, -1/2, 1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "white"],
        position: Cubes.Position.from_list([1/2, -1/2, 1])
      },
      %Cubes.Piece{
        colors: ["red", nil, "white"],
        position: Cubes.Position.from_list([1, -1/2, 1])
      },
      %Cubes.Piece{
        colors: ["orange", nil, "white"],
        position: Cubes.Position.from_list([-1, 1/2, 1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "white"],
        position: Cubes.Position.from_list([-1/2, 1/2, 1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "white"],
        position: Cubes.Position.from_list([1/2, 1/2, 1])
      },
      %Cubes.Piece{
        colors: ["red", nil, "white"],
        position: Cubes.Position.from_list([1, 1/2, 1])
      },
      %Cubes.Piece{
        colors: ["orange", "green", "white"],
        position: Cubes.Position.from_list([-1, 1, 1])
      },
      %Cubes.Piece{
        colors: [nil, "green", "white"],
        position: Cubes.Position.from_list([-1/2, 1, 1])
      },
      %Cubes.Piece{
        colors: [nil, "green", "white"],
        position: Cubes.Position.from_list([1/2, 1, 1])
      },
      %Cubes.Piece{
        colors: ["red", "green", "white"],
        position: Cubes.Position.from_list([1, 1, 1])
      },

      %Cubes.Piece{
        colors: ["orange", "blue", nil],
        position: Cubes.Position.from_list([-1, -1, 1/2])
      },
      %Cubes.Piece{
        colors: [nil, "blue", nil],
        position: Cubes.Position.from_list([-1/2, -1, 1/2])
      },
      %Cubes.Piece{
        colors: [nil, "blue", nil],
        position: Cubes.Position.from_list([1/2, -1, 1/2])
      },
      %Cubes.Piece{
        colors: ["red", "blue", nil],
        position: Cubes.Position.from_list([1, -1, 1/2])
      },
      %Cubes.Piece{
        colors: ["orange", nil, nil],
        position: Cubes.Position.from_list([-1, -1/2, 1/2])
      },
      %Cubes.Piece{
        colors: ["red", nil, nil],
        position: Cubes.Position.from_list([1, -1/2, 1/2])
      },
      %Cubes.Piece{
        colors: ["orange", nil, nil],
        position: Cubes.Position.from_list([-1, 1/2, 1/2])
      },
      %Cubes.Piece{
        colors: ["red", nil, nil],
        position: Cubes.Position.from_list([1, 1/2, 1/2])
      },
      %Cubes.Piece{
        colors: ["orange", "green", nil],
        position: Cubes.Position.from_list([-1, 1, 1/2])
      },
      %Cubes.Piece{
        colors: [nil, "green", nil],
        position: Cubes.Position.from_list([-1/2, 1, 1/2])
      },
      %Cubes.Piece{
        colors: [nil, "green", nil],
        position: Cubes.Position.from_list([1/2, 1, 1/2])
      },
      %Cubes.Piece{
        colors: ["red", "green", nil],
        position: Cubes.Position.from_list([1, 1, 1/2])
      },

      %Cubes.Piece{
        colors: ["orange", "blue", nil],
        position: Cubes.Position.from_list([-1, -1, -1/2])
      },
      %Cubes.Piece{
        colors: [nil, "blue", nil],
        position: Cubes.Position.from_list([-1/2, -1, -1/2])
      },
      %Cubes.Piece{
        colors: [nil, "blue", nil],
        position: Cubes.Position.from_list([1/2, -1, -1/2])
      },
      %Cubes.Piece{
        colors: ["red", "blue", nil],
        position: Cubes.Position.from_list([1, -1, -1/2])
      },
      %Cubes.Piece{
        colors: ["orange", nil, nil],
        position: Cubes.Position.from_list([-1, -1/2, -1/2])
      },
      %Cubes.Piece{
        colors: ["red", nil, nil],
        position: Cubes.Position.from_list([1, -1/2, -1/2])
      },
      %Cubes.Piece{
        colors: ["orange", nil, nil],
        position: Cubes.Position.from_list([-1, 1/2, -1/2])
      },
      %Cubes.Piece{
        colors: ["red", nil, nil],
        position: Cubes.Position.from_list([1, 1/2, -1/2])
      },
      %Cubes.Piece{
        colors: ["orange", "green", nil],
        position: Cubes.Position.from_list([-1, 1, -1/2])
      },
      %Cubes.Piece{
        colors: [nil, "green", nil],
        position: Cubes.Position.from_list([-1/2, 1, -1/2])
      },
      %Cubes.Piece{
        colors: [nil, "green", nil],
        position: Cubes.Position.from_list([1/2, 1, -1/2])
      },
      %Cubes.Piece{
        colors: ["red", "green", nil],
        position: Cubes.Position.from_list([1, 1, -1/2])
      },

      %Cubes.Piece{
        colors: ["orange", "blue", "yellow"],
        position: Cubes.Position.from_list([-1, -1, -1])
      },
      %Cubes.Piece{
        colors: [nil, "blue", "yellow"],
        position: Cubes.Position.from_list([-1/2, -1, -1])
      },
      %Cubes.Piece{
        colors: [nil, "blue", "yellow"],
        position: Cubes.Position.from_list([1/2, -1, -1])
      },
      %Cubes.Piece{
        colors: ["red", "blue", "yellow"],
        position: Cubes.Position.from_list([1, -1, -1])
      },
      %Cubes.Piece{
        colors: ["orange", nil, "yellow"],
        position: Cubes.Position.from_list([-1, -1/2, -1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "yellow"],
        position: Cubes.Position.from_list([-1/2, -1/2, -1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "yellow"],
        position: Cubes.Position.from_list([1/2, -1/2, -1])
      },
      %Cubes.Piece{
        colors: ["red", nil, "yellow"],
        position: Cubes.Position.from_list([1, -1/2, -1])
      },
      %Cubes.Piece{
        colors: ["orange", nil, "yellow"],
        position: Cubes.Position.from_list([-1, 1/2, -1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "yellow"],
        position: Cubes.Position.from_list([-1/2, 1/2, -1])
      },
      %Cubes.Piece{
        colors: [nil, nil, "yellow"],
        position: Cubes.Position.from_list([1/2, 1/2, -1])
      },
      %Cubes.Piece{
        colors: ["red", nil, "yellow"],
        position: Cubes.Position.from_list([1, 1/2, -1])
      },
      %Cubes.Piece{
        colors: ["orange", "green", "yellow"],
        position: Cubes.Position.from_list([-1, 1, -1])
      },
      %Cubes.Piece{
        colors: [nil, "green", "yellow"],
        position: Cubes.Position.from_list([-1/2, 1, -1])
      },
      %Cubes.Piece{
        colors: [nil, "green", "yellow"],
        position: Cubes.Position.from_list([1/2, 1, -1])
      },
      %Cubes.Piece{
        colors: ["red", "green", "yellow"],
        position: Cubes.Position.from_list([1, 1, -1])
      },
    ]
  }

  def cube(size) do
    case size do
	    "2x2" -> @wca2x2
	    "3x3" -> @wca3x3
	    "4x4" -> @wca4x4
    end
  end
end
