defmodule NinetyNineElixirProblems.MixProject do
  use Mix.Project

  def project do
    [
      app: :ninety_nine_elixir_problems,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.1.0", runtime: false}
    ]
  end
end
