defmodule WithLove.BillOfMaterial do
  use Ecto.Schema
  import Ecto.Changeset

  schema "bill_of_material" do
    belongs_to :project, WithLove.Project
  end
end
