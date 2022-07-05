defmodule Scenarios.Model.Element do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:full_name, :nickname, :description, :type]
  @required_fields [:full_name, :nickname, :type]

  schema "elements" do
    field :description, :string
    field :full_name, :string
    field :nickname, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, @fields)
    |> validate_required(@required_fields)
  end
end
