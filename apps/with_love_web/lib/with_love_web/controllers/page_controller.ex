defmodule WithLoveWeb.PageController do
  use WithLoveWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
