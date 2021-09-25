defmodule WithLove.Project do
  use Ecto.Schema
  import Ecto.Changeset

  # Projects are some aggregate
  # Might have things like permits
  schema "project" do
    belongs_to(:customer, WithLove.Customer)
    has_many(:permits, WithLove.Permit)
    has_many(:designs, WithLove.Design)
    has_many(:proposals, WithLove.Proposal)
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
