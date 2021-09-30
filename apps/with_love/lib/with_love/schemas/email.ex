defmodule WithLove.Email do
  use Ecto.Schema
  import Ecto.Changeset

  schema "email" do
    belongs_to :project, WithLove.Project
  end
end
