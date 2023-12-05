defmodule Mix.Tasks.AoC23 do
  use Mix.Task

  @shortdoc "Solve Advent of Code 2023"
  def run(args) do
    IO.puts("")
    IO.puts("#############################################")
    IO.puts("           Advent of Code 2023")
    IO.puts("#############################################")
    IO.puts("")

    case args do
      ["1"] -> AoC23.Day01.run()
      ["2"] -> AoC23.Day02.run()
      ["3"] -> AoC23.Day03.run()
      ["4"] -> AoC23.Day04.run()
      ["5"] -> AoC23.Day05.run()
      _ -> run_all()
    end
  end

  defp run_all do
    AoC23.Day01.run()
    AoC23.Day02.run()
    AoC23.Day03.run()
    AoC23.Day04.run()
    AoC23.Day05.run()
  end
end
