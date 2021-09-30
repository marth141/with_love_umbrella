defmodule WithLove.FieldOperation do
  use Ecto.Schema
  import Ecto.Changeset

  schema "field_operation" do
    belongs_to :project, WithLove.Project
  end
end
