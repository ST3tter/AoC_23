defmodule AoC23.Day05 do
  def run do
    IO.puts("---------- Day 05 ----------")
    IO.puts("Part 1: Lowest location number: #{part1()}")
    IO.puts("Part 2: Lowest location number: #{part2()}")
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
    File.read!("lib/day05/test_input.txt")
    |> String.split("\n")
  end
end
