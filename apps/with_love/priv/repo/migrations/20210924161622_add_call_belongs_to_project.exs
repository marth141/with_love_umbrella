defmodule WithLove.Repo.Migrations.AddCallBelongsToProject do
  use Ecto.Migration

  def up do
    create table("call") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("call")
  end
end
