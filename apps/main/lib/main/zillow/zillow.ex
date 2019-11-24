defmodule Main.Zillow do
  def rf_fit do
    DatasetsInterface.Fetchers.zillow_data
    |> UtilsInterface.PreProcessing.normalize_data
    |> ModelsInterface.Rf.fit_model
  end
end