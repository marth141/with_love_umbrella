defmodule WithLove.Repo.Migrations.AddRoleTable do
  use Ecto.Migration

  def up do
    create table("role") do
      add :title, :string
    end
  end

  def down do
    drop table("role")
  end
end
