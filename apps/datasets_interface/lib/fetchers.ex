defmodule DatasetsInterface.Fetchers do
  def zillow_data do
    DatasetsInterface.spawn_task(Datasets.Interfaces.Fetchers , :zillow_data, [])
  end
end