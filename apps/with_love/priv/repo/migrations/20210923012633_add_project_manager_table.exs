defmodule WithLove.Repo.Migrations.AddProjectManagerTable do
  use Ecto.Migration

  def up do
    create table("project_manager") do
      add :fname, :string
      add :lname, :string
      add :email, :string
    end
  end

  def down do
    drop table("project_manager")
  end
end
