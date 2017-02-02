defmodule Mix.Tasks.Npm do
  use Mix.Task

  @shortdoc "Run npm subcommands"
  @moduledoc """
  Task to allow the running of npm subcommands.

  e.g. `mix npm install` or `mix npm run test`

  (See also `npm.run` task.)
  """

  def run(args) do
    Mix.shell.info("npm #{Enum.join(args, " ")}")
    {output, status} = System.cmd("npm", args)
    Mix.shell.info(output)
    case status do
      0 -> :ok
      _ -> raise "npm command failure exit code: #{status}"
    end
  end
end
