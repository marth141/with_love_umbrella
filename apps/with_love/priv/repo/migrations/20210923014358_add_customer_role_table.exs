defmodule WithLove.Repo.Migrations.AddCustomerRoleTable do
  use Ecto.Migration

  def up do
    create table("customer_role") do
      add :customer_id, references(:customer)
      add :role_id, references(:role)
    end
  end

  def down do
    drop table("customer_role")
  end
end
