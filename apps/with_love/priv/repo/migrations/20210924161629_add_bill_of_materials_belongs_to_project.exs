defmodule WithLove.Repo.Migrations.AddBillOfMaterialBelongsToProject do
  use Ecto.Migration

  def up do
    create table("bill_of_material") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("bill_of_material")
  end
end
