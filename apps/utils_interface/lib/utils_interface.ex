defmodule UtilsInterface do
  def remote_call(module, fun, args, env \\ Mix.env) do
    do_remote_call({module, fun, args}, env)
  end

  def remote_url do
    Application.get_env(:utils_interface, :url)
  end

  defp do_remote_call({module, fun, args}, :test) do
    apply(module, fun, args)
  end

  defp do_remote_call({module, fun, args}, _) do
    {:ok, resp} = HTTPoison.post(remote_url(), serialize({module, fun, args}))
    deserialize(resp.body)
  end

  defp serialize(term), do: :erlang.term_to_binary(term)
  defp deserialize(data), do: :erlang.binary_to_term(data)
end
