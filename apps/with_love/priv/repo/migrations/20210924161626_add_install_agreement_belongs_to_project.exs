defmodule WithLove.Repo.Migrations.AddInstallAgreementBelongsToProject do
  use Ecto.Migration

  def up do
    create table("install_agreement") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("install_agreement")
  end
end
