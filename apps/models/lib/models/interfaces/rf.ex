defmodule Models.Interfaces.Rf do
  def fit_model(data) do
    with_poolboy({Models.Rf, :fit_model, [data]})
  end

  def with_poolboy(args) do
    worker = :poolboy.checkout(Models.Interface)
    result = GenServer.call(worker, args, :infinity)
    :poolboy.checkin(Models.Interface, worker)
    result
  end
end