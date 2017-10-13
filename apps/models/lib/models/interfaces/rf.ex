defmodule Models.Interfaces.Rf do
  alias Models.Rf

  defdelegate fit_model(data), to: Rf
end