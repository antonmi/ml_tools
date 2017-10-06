defmodule Models.Rf.Engine do
  alias Models.Rf.Coefficient

  def fit(data) do
    %Coefficient{a: 1, b: 2, data: data}
  end
end