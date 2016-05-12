defmodule Scraper.CLI do

  def main(args \\ []) do
    Scraper.start args
    # args
    # |> parse_args
    # |> response
    # |> IO.puts
  end

  defp parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(switches: [upcase: :boolean])

    {opts, List.to_string(word)}
  end

  defp response({opts, "Hello"}), do: response({opts, "World"})
  defp response({opts, word}) do
    if opts[:upcase], do: word = String.upcase(word)
      word
  end

end
