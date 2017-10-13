defmodule UtilsInterface.PreProcessing do
  def normalize_data(data) do
    UtilsInterface.remote_call(Utils.Interfaces.PreProcessing, :normalize_data, [data])
  end
end