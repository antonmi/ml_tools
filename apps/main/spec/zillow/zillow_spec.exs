defmodule Main.ZillowSpec do
  use ESpec

  describe ".rf_fir" do
    let :fit, do: described_module().rf_fit

    it "returns the fit" do
      expected_result = %{a: 1, b: 2, data: %{normalized: %{zillow: :dataset}}}
      expect fit() |> to(eq expected_result)
    end
  end
end