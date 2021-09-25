defmodule WithLove.Customer do
  use Ecto.Schema
  import Ecto.Changeset

  # Customers may get owned by a inside and or field sales rep
  # Customers might have many projects
  schema "customer" do
    field(:fname, :string)
    field(:lname, :string)
    field(:email, :string)
    field(:street, :string)
    field(:city, :string)
    field(:state, :string)
    field(:country, :string)
    field(:zip, :string)
    belongs_to(:inside_sales_rep, WithLove.InsideSalesRep)
    belongs_to(:field_sales_rep, WithLove.FieldSalesRep)
    belongs_to(:project_manager, WithLove.ProjectManager)
    has_many(:projects, WithLove.Project)
  end

  def new() do
    %__MODULE__{
      fname: "Cave",
      lname: "Johnson",
      email: "cave.johnson@aperturescience.com",
      street: "123 Lemon Avenue",
      city: "Copper Harbor",
      state: "Michigan",
      country: "United States",
      zip: "49918"
    }
  end

  def new(%{
        "fname" => fname,
        "lname" => lname,
        "email" => email,
        "street" => street,
        "city" => city,
        "state" => state,
        "country" => country,
        "zip" => zip
      }) do
    %__MODULE__{
      fname: fname,
      lname: lname,
      email: email,
      street: street,
      city: city,
      state: state,
      country: country,
      zip: zip
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