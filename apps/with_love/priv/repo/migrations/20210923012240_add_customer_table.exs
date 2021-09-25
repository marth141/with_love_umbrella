defmodule WithLove.Repo.Migrations.AddCustomerTable do
  use Ecto.Migration

  def up do
    create table("customer") do
      add :fname, :string
      add :lname, :string
      add :email, :string
      add :street, :string
      add :city, :string
      add :state, :string
      add :country, :string
      add :zip, :string
    end
  end

  def down do
    drop table("customer")
  end
end
