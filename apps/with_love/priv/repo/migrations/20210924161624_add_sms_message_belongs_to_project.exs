defmodule WithLove.Repo.Migrations.AddSMSMessageBelongsToProject do
  use Ecto.Migration

  def up do
    create table("sms_message") do
      add :project_id, references(:project)
      add :name, :string
    end
  end

  def down do
    drop table("sms_message")
  end
end
