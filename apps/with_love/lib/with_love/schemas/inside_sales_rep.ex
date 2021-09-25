defmodule WithLove.InsideSalesRep do
  use Ecto.Schema
  import Ecto.Changeset

  schema "inside_sales_rep" do
    field(:fname, :string)
    field(:lname, :string)
    field(:email, :string)
    has_many(:customers, WithLove.Customer)
  end

  def changset() do

  end

  def new() do
    %__MODULE__{
      fname: "Doug",
      lname: "Rattmann",
      email: "doug.rattmann@aperturescience.com"
    }
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
