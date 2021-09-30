defmodule WithLove.Repo.Migrations.AddInsideSalesCustomersTable do
  use Ecto.Migration

  def up do
    create table("inside_sales_customers") do
      add :inside_sales_rep_id, references(:employee)
      add :customer_id, references(:customer)
    end
  end

  def down do
    drop table("inside_sales_customers")
  end
end
