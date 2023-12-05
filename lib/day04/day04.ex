defmodule AoC23.Day04 do
  def run do
    IO.puts("---------- Day 04 ----------")
    IO.puts("Part 1: Points: #{part1()}")
    IO.puts("Part 2: Points: #{part2()}")
    IO.puts("")
  end

  defp part1 do
    get_input()
    -1
  end

  defp part2 do
    get_input()
    -1
  end

  defp get_input do
    File.read!("lib/day04/test_input.txt")
    |> String.split("\n")
  end
end
