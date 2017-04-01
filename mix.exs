defmodule Metatags.Mixfile do
  use Mix.Project

  def project do
    [
      app: :metatags,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: ["coveralls": :test, "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test],
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:phoenix_html, "~> 2.9.3"},
      {:ex_doc, "~> 0.15.0"},
      {:excoveralls, "~> 0.6", only: :test}
    ]
  end

  defp description do
    """
    Metatags provides an easy to work with API to set both default and page specific
    metatags on a page.
    """
  end

  defp package do
    [
      name: :metatags,
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["johan Tell"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/mintcore/metatags"}
    ]
  end
end
