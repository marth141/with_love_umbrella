defmodule WithLove.Design do
  use Ecto.Schema
  import Ecto.Changeset

  schema "design" do
    belongs_to(:project, WithLove.Project)
    field(:document, :binary)
  end

  def new() do
    %__MODULE__{}
  end

  def create() do
    new()
    |> WithLove.Repo.insert()
  end

  def get() do
    WithLove.Repo.get(__MODULE__, 1)
  end

  def get(id) when is_number(id) do
    WithLove.Repo.get(__MODULE__, id)
  end
end
