defmodule Utils.Interfaces.PreProcessing do
  alias Utils.PreProcessing

  defdelegate normalize_data(data), to: PreProcessing
end