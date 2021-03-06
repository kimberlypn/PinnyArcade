defmodule PinnyArcadeWeb.PageController do
  use PinnyArcadeWeb, :controller

  alias PinnyArcade.Pins
  alias PinnyArcade.Pins.Pin

  def index(conn, _params) do
    pins = Pins.list_pins()
    render(conn, "index.html", pins: pins)
  end

  def login(conn, _params) do
    render(conn, "login.html")
  end
end
