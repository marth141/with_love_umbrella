defmodule WithLove.Repo.Migrations.AddProjectBelongsToCustomer do
  use Ecto.Migration

  def up do
    create table("project") do
      add :customer_id, references(:customer)
    end
  end

  def down do
    drop table("project")
  end
end
