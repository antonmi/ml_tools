defmodule DatasetsInterface do
  def spawn_task(module, fun, args, env \\ Mix.env) do
    do_spawn_task({module, fun, args}, env)
  end

  defp do_spawn_task({module, fun, args}, :test) do
    apply(module, fun, args)
  end

  defp do_spawn_task({module, fun, args}, _) do
    Task.Supervisor.async(remote_supervisor(), module, fun, args)
    |> Task.await
  end

  defp remote_supervisor do
    {
      Application.get_env(:datasets_interface, :task_supervisor),
      Application.get_env(:datasets_interface, :node)
    }
  end
end
