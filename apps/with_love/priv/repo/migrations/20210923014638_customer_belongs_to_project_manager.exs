defmodule WithLove.Repo.Migrations.CustomerBelongsToProjectManager do
  use Ecto.Migration

  def change do
    alter table("customer") do
      add :project_manager_id, references(:employee)
    end
  end
end
