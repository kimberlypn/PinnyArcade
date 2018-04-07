defmodule PinnyArcade.Repo.Migrations.CreatePins do
  use Ecto.Migration

  def change do
    create table(:pins) do
      add :name, :string
      add :quantity, :integer, default: 1
      add :price, :float, default: 0.0
      add :img_src, :string, default: "default.png"

      timestamps()
    end

  end
end
