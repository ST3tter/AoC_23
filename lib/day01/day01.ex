defmodule AoC23.Day01 do
  def run do
    IO.puts("---------- Day 01 ----------")
    IO.puts("Part 1: Calibration values: #{part1()}")
    IO.puts("Part 2: Calibration values: #{part2()}")
    IO.puts("")
  end

  defp part1 do
    get_input()
    |> Enum.map(fn x ->
      numbers = Regex.replace(~r/[a-z]/, x, "")
      String.to_integer(String.at(numbers, 0) <> String.at(numbers, -1))
    end)
    |> Enum.sum()
  end

  defp part2 do
    get_input()
    |> Enum.map(&parse/1)
    |> Enum.map(fn x ->
      numbers = Regex.replace(~r/[a-z]/, x, "")
      String.to_integer(String.at(numbers, 0) <> String.at(numbers, -1))
    end)
    |> Enum.sum()
  end

  defp get_input do
    File.read!("lib/day01/input.txt")
    |> String.split("\n")
  end

  defp parse(string) do
    string
    |> String.replace("one", "o1e")
    |> String.replace("two", "t2o")
    |> String.replace("three", "t3e")
    |> String.replace("four", "4")
    |> String.replace("five", "5e")
    |> String.replace("six", "6")
    |> String.replace("seven", "7n")
    |> String.replace("eight", "e8t")
    |> String.replace("nine", "n9n")
  end
end
