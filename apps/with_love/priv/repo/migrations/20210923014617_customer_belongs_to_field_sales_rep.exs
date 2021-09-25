defmodule WithLove.Repo.Migrations.CustomerBelongsToFieldSalesRep do
  use Ecto.Migration

  def change do
    alter table("customer") do
      add :field_sales_rep_id, references(:field_sales_rep)
    end
  end
end
