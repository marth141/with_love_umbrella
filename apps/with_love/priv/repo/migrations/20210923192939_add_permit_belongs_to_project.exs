defmodule WithLove.Repo.Migrations.AddPermitBelongsToProject do
  use Ecto.Migration

  def up do
    create table("permit") do
      add :project_id, references(:project)
      add :country, :string
      add :state, :string
      add :city, :string
      add :zip, :string
      add :authority_name, :string
      add :document, :binary
    end
  end

  def down do
    drop table("permit")
  end
end
