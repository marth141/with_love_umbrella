defmodule WithLove.Call do
  use Ecto.Schema
  import Ecto.Changeset

  schema "call" do
    belongs_to :project, WithLove.Project
  end
end
