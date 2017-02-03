defmodule Mix.Tasks.Npm do
  use Mix.Task

  @shortdoc "Run npm subcommands"
  @moduledoc """
  Task to allow the running of npm subcommands.

  e.g. `mix npm install` or `mix npm run test`

  (See also `npm.run` task.)
  """

  def run(args) do
    cmd = Enum.join(["npm"] ++ args, " ")

    Mix.shell.info(cmd)
    status = Mix.shell.cmd(cmd, stderr_to_stdout: true)
    case status do
      0 -> :ok
      _ -> raise "npm command failure exit code: #{status}"
    end
  end
end
