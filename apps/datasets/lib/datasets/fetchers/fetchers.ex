defmodule Datasets.Fetchers do
  alias Datasets.Fetchers.Kaggle
  alias Datasets.Fetchers.Aws

  def zillow_data do
    Kaggle.fetch_zillow_dataset()
  end

  def landsat_data do
    Aws.fetch_landsat_dataset()
  end
end
