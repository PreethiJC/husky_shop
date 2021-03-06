defmodule HuskyShop.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset


  schema "products" do
    field :desc, :string
    field :inventory, :integer
    field :name, :string
    field :price, :decimal

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:name, :desc, :price, :inventory])
    |> validate_required([:name, :desc, :price, :inventory])
  end
end
