defmodule AoC23.Day03 do
  def run do
    IO.puts("---------- Day 03 ----------")
    IO.puts("Part 1: Sum of part numbers: #{part1()}")
    IO.puts("Part 2: Sum of part numbers: #{part2()}")
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
    File.read!("lib/day03/test_input.txt")
    |> String.split("\n")
  end
end
