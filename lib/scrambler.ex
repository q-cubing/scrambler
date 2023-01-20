defmodule Scrambler do
  @moves_set %{
    "2x2" =>
      {9..10,
       [
         [:F, :"F'", :F2],
         [:R, :"R'", :R2],
         [:U, :"U'", :U2]
       ]},
    "3x3" =>
      {19..20,
       [
         [:F, :"F'", :F2, :B, :"B'", :B2],
         [:R, :"R'", :R2, :L, :"L'", :L2],
         [:U, :"U'", :U2, :D, :"D'", :D2]
       ]},
    "4x4" =>
      {43..45,
       [
         [:F, :"F'", :F2, :B, :"B'", :B2],
         [:R, :"R'", :R2, :L, :"L'", :L2],
         [:U, :"U'", :U2, :D, :"D'", :D2],
         [:Fw, :"Fw'", :Fw2],
         [:Rw, :"Rw'", :Rw2],
         [:Uw, :"Uw'", :Uw2]
       ]},
    "5x5" =>
      {58..60,
       [
         [:F, :"F'", :F2, :B, :"B'", :B2],
         [:R, :"R'", :R2, :L, :"L'", :L2],
         [:U, :"U'", :U2, :D, :"D'", :D2],
         [:Fw, :"Fw'", :Fw2, :Bw, :"Bw'", :Bw2],
         [:Rw, :"Rw'", :Rw2, :Lw, :"Lw'", :Lw2],
         [:Uw, :"Uw'", :Uw2, :Dw, :"Dw'", :Dw2]
       ]},
    "6x6" =>
      {78..80,
       [
         [:F, :"F'", :F2, :B, :"B'", :B2],
         [:R, :"R'", :R2, :L, :"L'", :L2],
         [:U, :"U'", :U2, :D, :"D'", :D2],
         [:Fw, :"Fw'", :Fw2, :Bw, :"Bw'", :Bw2],
         [:Rw, :"Rw'", :Rw2, :Lw, :"Lw'", :Lw2],
         [:Uw, :"Uw'", :Uw2, :Dw, :"Dw'", :Dw2],
         [:"3Fw", :"3Fw'", :"3Fw2"],
         [:"3Rw", :"3Rw'", :"3Rw2"],
         [:"3Uw", :"3Uw'", :"3Uw2"]
       ]},
    "7x7" =>
      {98..100,
       [
         [:F, :"F'", :F2, :B, :"B'", :B2],
         [:R, :"R'", :R2, :L, :"L'", :L2],
         [:U, :"U'", :U2, :D, :"D'", :D2],
         [:Fw, :"Fw'", :Fw2, :Bw, :"Bw'", :Bw2],
         [:Rw, :"Rw'", :Rw2, :Lw, :"Lw'", :Lw2],
         [:Uw, :"Uw'", :Uw2, :Dw, :"Dw'", :Dw2],
         [:"3Fw", :"3Fw'", :"3Fw2", :"3Bw", :"3Bw'", :"3Bw2"],
         [:"3Rw", :"3Rw'", :"3Rw2", :"3Lw", :"3Lw'", :"3Lw2"],
         [:"3Uw", :"3Uw'", :"3Uw2", :"3Dw", :"3Dw'", :"3Dw2"]
       ]},
    "3x3x2" =>
      {15..16,
       [
         [:F2, :B2],
         [:R2, :L2],
         [:U, :"U'", :U2, :D, :"D'", :D2]
       ]}
  }

  def gen_scramble(result, 0, _), do: result

  def gen_scramble(scramble, size, scramble_moves) do
    # start scramble
    [h | _] = scramble

    move_choice =
      scramble_moves
      |> Enum.reject(fn n -> h in n end)
      |> Enum.random()

    gen_scramble([Enum.random(move_choice) | scramble], size - 1, scramble_moves)
  end

  def gen_scramble(scramble_type) when is_binary(scramble_type) do
    # new scramble
    {scramble_size, scramble_moves} = @moves_set[scramble_type]
    move_choice = Enum.random(scramble_moves)
    gen_scramble([Enum.random(move_choice)], Enum.random(scramble_size) - 1, scramble_moves)
  end
end
