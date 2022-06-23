defmodule ElixirKafkaService.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_kafka_service,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:brod, "~> 3.15"},
      {:jason, "~> 1.0"}
    ]
  end
end
