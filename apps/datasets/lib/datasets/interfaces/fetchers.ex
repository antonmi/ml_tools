defmodule Datasets.Interfaces.Fetchers do
  alias Datasets.Fetchers

  defdelegate zillow_data, to: Fetchers
  defdelegate landsat_data, to: Fetchers
end
