defmodule WithLove.Repo.Migrations.AddInstallBelongsToProject do
  use Ecto.Migration

  def up do
    create table("install") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("install")
  end
end
