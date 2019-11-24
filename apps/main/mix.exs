defmodule Main.Mixfile do
  use Mix.Project

  def project do
    [
      app: :main,
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
      mod: {Main.Application, []},
    ]
  end

  defp deps do
    [
      {:datasets, in_umbrella: true, only: [:test]},
      {:datasets_interface, in_umbrella: true},
      {:models, in_umbrella: true, only: [:test]},
      {:models_interface, in_umbrella: true},
      {:utils, in_umbrella: true, only: [:test]},
      {:utils_interface, in_umbrella: true,},
      {:espec, "~> 1.7", only: :test}
    ]
  end
end
