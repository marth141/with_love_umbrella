defmodule WithLove.Repo.Migrations.AddInsideSalesRepTable do
  use Ecto.Migration

  def up do
    create table("inside_sales_rep") do
      add :fname, :string
      add :lname, :string
      add :email, :string
    end
  end

  def down do
    drop table("inside_sales_rep")
  end
end
