defmodule WithLove.Install do
  use Ecto.Schema
  import Ecto.Changeset

  schema "install" do
    belongs_to :project, WithLove.Project
  end
end
