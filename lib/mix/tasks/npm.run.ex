defmodule Mix.Tasks.Npm.Run do
  use Mix.Task

  @shortdoc "Run npm scripts"
  @moduledoc """
  Task to allow the running of npm scripts.

  e.g. `mix npm.run build` is equivalent to `npm run build`.
  """

  def run(args) do
    Mix.Tasks.Npm.run(["run"] ++ args)
  end
end
