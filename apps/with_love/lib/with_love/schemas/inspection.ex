defmodule WithLove.Inspection do
  use Ecto.Schema
  import Ecto.Changeset

  schema "inspection" do
    belongs_to :project, WithLove.Project
  end
end
