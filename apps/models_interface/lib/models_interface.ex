defmodule ModelsInterface do
  def remote_call(module, fun, args, env \\ Mix.env) do
    do_remote_call({module, fun, args}, env)
  end

  def remote_node do
    Application.get_env(:models_interface, :node)
  end

  defp do_remote_call({module, fun, args}, :test) do
    apply(module, fun, args)
  end

  defp do_remote_call({module, fun, args}, _) do
    :rpc.call(remote_node(), module, fun, args)
  end
end
