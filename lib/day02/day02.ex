defmodule AoC23.Day02 do
  def run do
    IO.puts("---------- Day 02 ----------")
    IO.puts("Part 1: Sum of IDs: #{part1()}")
    IO.puts("Part 2: Sum of the power of the sets: #{part2()}")
    IO.puts("")
  end

  defp part1 do
    get_input()
    |> Enum.map(&parse_game/1)
    |> Enum.map(&parse_data/1)
    |> Enum.map(&check_game/1)
    |> Enum.sum()
  end

  defp part2 do
    get_input()
    |> Enum.map(&parse_game/1)
    |> Enum.map(&parse_data/1)
    |> Enum.map(&sort_data/1)
    |> Enum.map(&Enum.product/1)
    |> Enum.sum()
  end

  defp get_input do
    File.read!("lib/day02/input.txt")
    |> String.split("\n")
  end

  def parse_game(game) do
    [game_id, data] = String.split(game, ": ")
    [_, id] = String.split(game_id, " ")
    id = String.to_integer(id)
    data = String.split(data, "; ")

    %{id: id, data: data}
  end

  defp parse_data(%{id: id, data: data}) do
    data =
      data
      |> Enum.map(fn x ->
        String.split(x, ", ")
        |> Enum.map(fn y ->
          cube = String.split(y, " ")

          case cube do
            [n, "red"] -> {String.to_integer(n), "red"}
            [n, "green"] -> {String.to_integer(n), "green"}
            [n, "blue"] -> {String.to_integer(n), "blue"}
          end
        end)
      end)

    %{id: id, data: data}
  end

  defp check_game(%{id: id, data: data}) do
    data =
      Enum.flat_map(data, fn x -> x end)
      |> Enum.map(fn {n, color} ->
        case color do
          "red" when n > 12 -> id
          "green" when n > 13 -> id
          "blue" when n > 14 -> id
          _ -> 0
        end
      end)
      |> Enum.sum()

    cond do
      data == 0 -> id
      true -> 0
    end
  end

  defp sort_data(%{id: _id, data: data}) do
    data = Enum.flat_map(data, fn x -> x end)

    Enum.reduce(data, [0, 0, 0], fn {n, color}, [r, g, b] ->
      case color do
        "red" when n > r -> [n, g, b]
        "green" when n > g -> [r, n, b]
        "blue" when n > b -> [r, g, n]
        _ -> [r, g, b]
      end
    end)
  end
end
