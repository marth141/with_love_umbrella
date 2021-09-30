defmodule WithLove.Repo.Migrations.AddInspectionBelongsToProject do
  use Ecto.Migration

  def up do
    create table("inspection") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("inspection")
  end
end
