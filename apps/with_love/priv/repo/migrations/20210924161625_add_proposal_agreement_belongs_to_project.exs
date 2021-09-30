defmodule WithLove.Repo.Migrations.AddProposalAgreementBelongsToProject do
  use Ecto.Migration

  def up do
    create table("proposal_agreement") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("proposal_agreement")
  end
end
