defmodule Datasets.FetchersSpec do
  use ESpec

  describe ".zillow_data" do
    let :data, do: described_module().zillow_data

    it do: expect data() |> to(eq %{zillow: :dataset})
  end

  describe ".landsat_data" do
    let :data, do: described_module().landsat_data

    it do: expect data() |> to(eq %{landsat: :dataset})
  end


end