defmodule AoC23.Day04 do
  def run do
    IO.puts("---------- Day 04 ----------")
    IO.puts("Part 1: Points: #{part1()}")
    IO.puts("Part 2: Points: #{part2()}")
    IO.puts("")
  end

  defp part1 do
    get_input()
    |> Enum.map(fn x ->
      find_winning_numbers(x)
      |> pow()
    end)
    |> Enum.sum()
  end

  defp part2 do
    get_input()
    -1
  end

  defp get_input do
    File.read!("lib/day04/input.txt")
    |> String.split("\n")
    |> Enum.map(fn x ->
      String.replace(x, ~r/Card\s{1,3}[\d]{1,3}:\s{1,3}/, "")
      |> String.split(" | ")
      |> Enum.map(fn y -> String.split(y, ~r/\s{1,2}/) end)
    end)
  end

  defp find_winning_numbers([winners, numbers]) do
    Enum.reduce(numbers, 0, fn x, acc ->
      if Enum.member?(winners, x) do
        acc + 1
      else
        acc
      end
    end)
  end

  defp pow(n) do
    cond do
      n == 0 -> 0
      true -> 2 ** (n - 1)
    end
  end
end
