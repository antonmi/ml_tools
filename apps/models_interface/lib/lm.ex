defmodule ModelsInterface.Lm do
  def fit_model(data) do
    ModelsInterface.remote_call(Models.Interfaces.Lm, :fit_model, [data])
  end
end