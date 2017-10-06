defmodule Models.Interfaces.Lm do
  alias Models.Lm

  defdelegate fit_model(data), to: Lm
end