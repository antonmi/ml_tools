defmodule Datasets.Application do
  @moduledoc false

  use Application
  import Supervisor.Spec

  def start(_type, _args) do
    children = [
      supervisor(Task.Supervisor,
        [[name: Datasets.Task.Supervisor]],
        [restart: :temporary, shutdown: 10000])
    ]

    opts = [strategy: :one_for_one, name: Datasets.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
