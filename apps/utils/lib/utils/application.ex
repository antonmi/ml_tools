defmodule Utils.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      Plug.Adapters.Cowboy.child_spec(:http,  Utils.Interfaces.Plug, [], [port: 4001])
    ]

    opts = [strategy: :one_for_one, name: Utils.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
