defmodule Elasticlunr.Pipeline.Trimmer do
  @moduledoc false

  @behaviour Elasticlunr.Pipeline

  @impl true
  def call(token, _tokens) do
    token
  end
end