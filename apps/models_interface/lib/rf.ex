defmodule ModelsInterface.Rf do
  def fit_model(data) do
    ModelsInterface.remote_call(Models.Interfaces.Rf, :fit_model, [data])
  end
end