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

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Main.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:datasets, in_umbrella: true},
      {:models, in_umbrella: true},
      {:utils, in_umbrella: true},
      {:espec, "1.4.6", only: :test}
    ]
  end
end
