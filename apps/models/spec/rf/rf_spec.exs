defmodule Models.RfSpec do
  use ESpec

  describe ".fit_model" do
    let :fit, do: described_module().fit_model("data")

    it do: expect fit() |> to(eq %{a: 1, b: 2, data: "data"})
  end
end