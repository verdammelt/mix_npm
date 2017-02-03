defmodule MixNpm.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mix_npm,
      version: "0.3.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      aliases: aliases(),
      description: description(),
      package: package(),
      dialyzer: [plt_add_deps: :transitive, plt_add_apps: [:mix]],
      elixirc_options: [warnings_as_errors: true]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:dogma, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.14", only: :dev}

    ]
  end

  defp aliases do
    [
      "build": ["compile", "dogma --format=flycheck"]
    ]
  end

  defp description do
    """
    Mix tasks to run NPM commands.
    """
  end

  defp package do
    [
      maintainers: ["Mark Simpson <verdammelt@gmail.com>"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/verdammelt/mix_npm"}
    ]
  end
end
