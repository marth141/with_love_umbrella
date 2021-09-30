defmodule WithLove.Repo.Migrations.AddEmailBelongsToProject do
  use Ecto.Migration

  def up do
    create table("email") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("email")
  end
end
