defmodule WithLove.Repo.Migrations.CustomerBelongsToInsideSalesRep do
  use Ecto.Migration

  def change do
    alter table("customer") do
      add :inside_sales_rep_id, references(:employee)
    end
  end
end
