defmodule WithLove.Repo.Migrations.AddProposalBelongsToProject do
  use Ecto.Migration

  def up do
    create table("proposal") do
      add :project_id, references(:project)
      add :document, :binary
    end
  end

  def down do
    drop table("proposal")
  end
end
