defmodule WithLove.Repo.Migrations.CustomerBelongsToInsideSalesRep do
  use Ecto.Migration

  def change do
    alter table("customer") do
      add :inside_sales_rep_id, references(:inside_sales_rep)
    end
  end
end
