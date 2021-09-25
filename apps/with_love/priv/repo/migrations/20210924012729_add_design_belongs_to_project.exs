defmodule WithLove.Repo.Migrations.AddDesignBelongsToProject do
  use Ecto.Migration

  def up do
    create table("design") do
      add :project_id, references(:project)
      add :document, :binary
    end
  end

  def down do
    drop table("design")
  end
end
