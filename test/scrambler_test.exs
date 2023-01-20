defmodule ScramblerTest do
  use ExUnit.Case
  doctest Scrambler

  test "greets the world" do
    assert Scrambler.hello() == :world
  end
end
