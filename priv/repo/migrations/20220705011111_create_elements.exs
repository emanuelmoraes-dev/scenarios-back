defmodule Scenarios.Repo.Migrations.CreateElements do
  use Ecto.Migration

  def change do
    create table(:elements) do
      add :full_name, :string
      add :nickname, :string
      add :description, :string, default: ""
      add :type, :string

      timestamps()
    end
  end
end
