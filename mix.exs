defmodule MixNpm.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mix_npm,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      aliases: aliases(),
      dialyzer: [plt_add_deps: :transitive, plt_add_apps: [:mix]],
      elixirc_options: [warnings_as_errors: true]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:dogma, "~> 0.1", only: :dev}
    ]
  end

  defp aliases do
    [
      "build": ["compile", "dogma --format=flycheck"]
    ]
  end
end
