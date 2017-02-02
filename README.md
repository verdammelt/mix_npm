# MixNpm

A small set of mix tasks for creating mix commands that run npm commands.

## Features

* `mix npm SUBCOMMAND [ARGS]` is equivalent to `npm SUBCOMMAND ARGS`
* `mix npm.run SCRIPT [ARGS]` is equivalent to `npm run SCRIPT ARGS`

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `mix_npm` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:mix_npm, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/mix_npm](https://hexdocs.pm/mix_npm).

