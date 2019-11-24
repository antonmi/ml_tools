defmodule MlTools.Mixfile do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      start_permanent: Mix.env == :prod,
      preferred_cli_env: [espec: :test],
      deps: deps()
    ]
  end

  defp deps do
    [
      {:espec, "~> 1.7", only: :test}
    ]
  end
end
