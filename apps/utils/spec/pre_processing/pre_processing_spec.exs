defmodule Utils.PreProcessingSpec do
  use ESpec

  describe ".normalize_data" do
    let :data, do: described_module().normalize_data("data")

    it do: expect(data()).to eq(%{normalized: "data"})
  end
end