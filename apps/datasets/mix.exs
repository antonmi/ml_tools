defmodule Datasets.Mixfile do
  use Mix.Project

  def project do
    [
      app: :datasets,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      preferred_cli_env: [espec: :test],
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Datasets.Application, []}
    ]
  end

  defp deps do
    [
      {:espec, "~> 1.7", only: :test}
    ]
  end
end
