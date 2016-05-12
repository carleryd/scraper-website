defmodule Scraper.Mixfile do
  use Mix.Project

  def project do
    [
      app: :scraper,
      version: "0.0.1",
      escript: escript,
      elixir: "~> 1.2.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  # Needed for calling program as executable
  def escript do
    [
      main_module: Scraper.CLI
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications:
      [
        :logger,
        :httpoison
      ]
    ]
    # [applications: [:logger, :httpoison, :hound]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      { :scrape, "~> 1.0" }
      # { :httpoison, ">= 0.5.0" },
      # { :floki, ">= 0.3.0" },
      # { :hound, ">= 0.6.0" }
    ]
  end
end
