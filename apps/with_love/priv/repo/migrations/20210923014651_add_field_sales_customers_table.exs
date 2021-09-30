defmodule WithLove.Repo.Migrations.AddFieldSalesCustomersTable do
  use Ecto.Migration

  def up do
    create table("field_sales_customers") do
      add :field_sales_rep_id, references(:employee)
      add :customer_id, references(:customer)
    end
  end

  def down do
    drop table("field_sales_customers")
  end
end
