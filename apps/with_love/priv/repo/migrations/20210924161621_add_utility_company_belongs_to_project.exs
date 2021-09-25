defmodule WithLove.Repo.Migrations.AddUtilityCompanyBelongsToProject do
  use Ecto.Migration

  def up do
    create table("utility_company") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("utility_company")
  end
end
