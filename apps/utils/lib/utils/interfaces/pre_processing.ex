defmodule Utils.Interfaces.PrePorcessing do
  alias Utils.PrePorcessing

  defdelegate normalize_data(data), to: Utils.PrePorcessing
end