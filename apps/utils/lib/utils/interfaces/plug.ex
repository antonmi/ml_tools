defmodule Utils.Interfaces.Plug do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/test" do
    send_resp(conn, 200, "world")
  end

  post "/remote" do
    {:ok, body, conn} = Plug.Conn.read_body(conn)
    {module, fun, args} = deserialize(body)
    result = apply(module, fun, args)
    send_resp(conn, 200, serialize(result))
  end

  match _ do
    send_resp(conn, 404, "oops")
  end

  defp serialize(term), do: :erlang.term_to_binary(term)
  defp deserialize(data), do: :erlang.binary_to_term(data)
end