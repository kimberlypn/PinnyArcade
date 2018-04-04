defmodule PinnyArcade.PinsTest do
  use PinnyArcade.DataCase

  alias PinnyArcade.Pins

  describe "pins" do
    alias PinnyArcade.Pins.Pin

    @valid_attrs %{name: "some name", price: 120.5, quantity: 42}
    @update_attrs %{name: "some updated name", price: 456.7, quantity: 43}
    @invalid_attrs %{name: nil, price: nil, quantity: nil}

    def pin_fixture(attrs \\ %{}) do
      {:ok, pin} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Pins.create_pin()

      pin
    end

    test "list_pins/0 returns all pins" do
      pin = pin_fixture()
      assert Pins.list_pins() == [pin]
    end

    test "get_pin!/1 returns the pin with given id" do
      pin = pin_fixture()
      assert Pins.get_pin!(pin.id) == pin
    end

    test "create_pin/1 with valid data creates a pin" do
      assert {:ok, %Pin{} = pin} = Pins.create_pin(@valid_attrs)
      assert pin.name == "some name"
      assert pin.price == 120.5
      assert pin.quantity == 42
    end

    test "create_pin/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Pins.create_pin(@invalid_attrs)
    end

    test "update_pin/2 with valid data updates the pin" do
      pin = pin_fixture()
      assert {:ok, pin} = Pins.update_pin(pin, @update_attrs)
      assert %Pin{} = pin
      assert pin.name == "some updated name"
      assert pin.price == 456.7
      assert pin.quantity == 43
    end

    test "update_pin/2 with invalid data returns error changeset" do
      pin = pin_fixture()
      assert {:error, %Ecto.Changeset{}} = Pins.update_pin(pin, @invalid_attrs)
      assert pin == Pins.get_pin!(pin.id)
    end

    test "delete_pin/1 deletes the pin" do
      pin = pin_fixture()
      assert {:ok, %Pin{}} = Pins.delete_pin(pin)
      assert_raise Ecto.NoResultsError, fn -> Pins.get_pin!(pin.id) end
    end

    test "change_pin/1 returns a pin changeset" do
      pin = pin_fixture()
      assert %Ecto.Changeset{} = Pins.change_pin(pin)
    end
  end
end
