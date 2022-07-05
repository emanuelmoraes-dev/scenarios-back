defmodule Scenarios.Repo.Migrations.Relations do
  use Ecto.Migration

  def change do
    create table(:relations) do
      add :type, :string
      add :from_id, references(:elements)
      add :to_id, references(:elements)

      timestamps()
    end
  end
end
