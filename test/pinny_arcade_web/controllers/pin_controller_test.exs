defmodule PinnyArcadeWeb.PinControllerTest do
  use PinnyArcadeWeb.ConnCase

  alias PinnyArcade.Pins

  @create_attrs %{name: "some name", price: 120.5, quantity: 42}
  @update_attrs %{name: "some updated name", price: 456.7, quantity: 43}
  @invalid_attrs %{name: nil, price: nil, quantity: nil}

  def fixture(:pin) do
    {:ok, pin} = Pins.create_pin(@create_attrs)
    pin
  end

  describe "index" do
    test "lists all pins", %{conn: conn} do
      conn = get conn, pin_path(conn, :index)
      assert html_response(conn, 200) =~ "Listing Pins"
    end
  end

  describe "new pin" do
    test "renders form", %{conn: conn} do
      conn = get conn, pin_path(conn, :new)
      assert html_response(conn, 200) =~ "New Pin"
    end
  end

  describe "create pin" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post conn, pin_path(conn, :create), pin: @create_attrs

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == pin_path(conn, :show, id)

      conn = get conn, pin_path(conn, :show, id)
      assert html_response(conn, 200) =~ "Show Pin"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post conn, pin_path(conn, :create), pin: @invalid_attrs
      assert html_response(conn, 200) =~ "New Pin"
    end
  end

  describe "edit pin" do
    setup [:create_pin]

    test "renders form for editing chosen pin", %{conn: conn, pin: pin} do
      conn = get conn, pin_path(conn, :edit, pin)
      assert html_response(conn, 200) =~ "Edit Pin"
    end
  end

  describe "update pin" do
    setup [:create_pin]

    test "redirects when data is valid", %{conn: conn, pin: pin} do
      conn = put conn, pin_path(conn, :update, pin), pin: @update_attrs
      assert redirected_to(conn) == pin_path(conn, :show, pin)

      conn = get conn, pin_path(conn, :show, pin)
      assert html_response(conn, 200) =~ "some updated name"
    end

    test "renders errors when data is invalid", %{conn: conn, pin: pin} do
      conn = put conn, pin_path(conn, :update, pin), pin: @invalid_attrs
      assert html_response(conn, 200) =~ "Edit Pin"
    end
  end

  describe "delete pin" do
    setup [:create_pin]

    test "deletes chosen pin", %{conn: conn, pin: pin} do
      conn = delete conn, pin_path(conn, :delete, pin)
      assert redirected_to(conn) == pin_path(conn, :index)
      assert_error_sent 404, fn ->
        get conn, pin_path(conn, :show, pin)
      end
    end
  end

  defp create_pin(_) do
    pin = fixture(:pin)
    {:ok, pin: pin}
  end
end
