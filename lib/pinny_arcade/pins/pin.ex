defmodule PinnyArcade.Pins.Pin do
  use Ecto.Schema
  import Ecto.Changeset


  schema "pins" do
    field :name, :string
    field :price, :float, default: 0.0
    field :quantity, :integer, default: 1
    field :img_src, :string

    timestamps()
  end

  @doc false
  def changeset(pin, attrs) do
    pin
    |> cast(attrs, [:name, :quantity, :price, :img_src])
    |> validate_required([:name, :quantity, :price])
  end
end
