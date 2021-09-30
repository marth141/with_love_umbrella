defmodule WithLove.Repo.Migrations.AddEmployeeTable do
  use Ecto.Migration

  def up do
    create table("employee") do
      add :fname, :string
      add :lname, :string
      add :email, :string
    end
  end

  def down do
    drop table("employee")
  end
end
