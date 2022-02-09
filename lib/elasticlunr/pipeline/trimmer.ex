defmodule Elasticlunr.Pipeline.Trimmer do
  alias Elasticlunr.Token

  @behaviour Elasticlunr.Pipeline

  @impl true
  def call(%Token{token: str} = token) do
    str = Regex.replace(~r/^\W+/u, str, "")
    str = Regex.replace(~r/\W+$/u, str, "")

    Token.update(token, token: str)
  end
end
