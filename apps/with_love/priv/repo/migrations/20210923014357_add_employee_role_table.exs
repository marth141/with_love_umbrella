defmodule WithLove.Repo.Migrations.AddEmployeeRoleTable do
  use Ecto.Migration

  def up do
    create table("employee_role") do
      add :employee_id, references(:employee)
      add :role_id, references(:role)
    end
  end

  def down do
    drop table("employee_role")
  end
end
