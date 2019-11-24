defmodule Models.Interfaces.Worker do
  use GenServer

  def start_link(_opts) do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def init(:ok), do: {:ok, %{}}

  def handle_call({module, fun, args}, _from, state) do
    result = apply(module, fun, args)
    {:reply, result, state}
  end
end