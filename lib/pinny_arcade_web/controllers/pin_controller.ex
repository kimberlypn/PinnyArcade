defmodule PinnyArcadeWeb.PinController do
  use PinnyArcadeWeb, :controller

  alias PinnyArcade.Pins
  alias PinnyArcade.Pins.Pin

  def index(conn, _params) do
    pins = Pins.list_pins()
    render(conn, "index.html", pins: pins)
  end

  def new(conn, _params) do
    changeset = Pins.change_pin(%Pin{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"pin" => pin_params}) do
    case Pins.create_pin(pin_params) do
      {:ok, pin} ->
        conn
        |> put_flash(:info, "Pin created successfully.")
        |> redirect(to: pin_path(conn, :show, pin))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    pin = Pins.get_pin!(id)
    render(conn, "show.html", pin: pin)
  end

  def edit(conn, %{"id" => id}) do
    pin = Pins.get_pin!(id)
    changeset = Pins.change_pin(pin)
    render(conn, "edit.html", pin: pin, changeset: changeset)
  end

  def update(conn, %{"id" => id, "pin" => pin_params}) do
    pin = Pins.get_pin!(id)

    case Pins.update_pin(pin, pin_params) do
      {:ok, pin} ->
        conn
        |> put_flash(:info, "Pin updated successfully.")
        |> redirect(to: pin_path(conn, :show, pin))
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", pin: pin, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    pin = Pins.get_pin!(id)
    {:ok, _pin} = Pins.delete_pin(pin)

    conn
    |> put_flash(:info, "Pin deleted successfully.")
    |> redirect(to: pin_path(conn, :index))
  end
end
