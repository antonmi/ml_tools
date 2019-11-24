defmodule Models.Application do
  use Application

  def start(_type, _args) do
    pool_options = [
      name: {:local, Models.Interface},
      worker_module: Models.Interfaces.Worker,
      size: 5, max_overflow: 5]

    children = [
      :poolboy.child_spec(Models.Interface, pool_options, []),
    ]

    opts = [strategy: :one_for_one, name: Models.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
