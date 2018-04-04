defmodule PinnyArcadeWeb.PageController do
  use PinnyArcadeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
