defmodule Main.Zillow do
#  def rf_fit do
#    Datasets.Fetchers.zillow_data
#    |> Utils.PrePorcessing.normalize_data
#    |> Models.Rf.fit_model
#  end

  def rf_fit do
    DatasetsInterface.Fetchers.zillow_data
    |> UtilsInterface.PreProcessing.normalize_data
    |> ModelsInterface.Rf.fit_model
  end
end