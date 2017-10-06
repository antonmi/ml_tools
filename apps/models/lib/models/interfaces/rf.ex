defmodule Models.Interfaces.Rf do
  alias Models.Rf.Engine

  defdelegate fit_model(data), to: Models.Rf
end