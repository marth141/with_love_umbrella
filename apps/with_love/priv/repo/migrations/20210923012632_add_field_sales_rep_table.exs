defmodule WithLove.Repo.Migrations.AddFieldSalesRepTable do
  use Ecto.Migration

  def up do
    create table("field_sales_rep") do
      add :fname, :string
      add :lname, :string
      add :email, :string
    end
  end

  def down do
    drop table("field_sales_rep")
  end
end
