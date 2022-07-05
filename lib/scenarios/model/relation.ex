defmodule Scenarios.Model.Relation do
  use Ecto.Schema
  import Ecto.Changeset
  alias Scenarios.Model.Element

  @fields [:type, :from_id, :to_id]
  @required_fields [:type, :from_id, :to_id]

  schema "relations" do
    field :type, :string

    belongs_to :from, Element
    belongs_to :to, Element

    timestamps()
  end

  @doc false
  def changeset(attrs) do
    %__MODULE__{}
    |> cast(attrs, @fields)
    |> validate_required(@required_fields)
  end
end
