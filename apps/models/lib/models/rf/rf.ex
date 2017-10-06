defmodule Models.Rf do
  alias Models.Rf.Engine

  def fit_model(data) do
    Engine.fit(data)
  end
end