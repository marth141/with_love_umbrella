defmodule WithLove.Customer do
  use Ecto.Schema
  import Ecto.Changeset

  # Customers may get owned by a inside and or field sales rep
  # Customers might have many projects
  schema "customer" do
    belongs_to(:inside_sales_rep, WithLove.Employee)
    belongs_to(:field_sales_rep, WithLove.Employee)
    belongs_to(:project_manager, WithLove.Employee)
    field(:fname, :string)
    field(:lname, :string)
    field(:email, :string)
    field(:street, :string)
    field(:city, :string)
    field(:state, :string)
    field(:country, :string)
    field(:zip, :string)
    has_many(:projects, WithLove.Project)
    many_to_many(:roles, WithLove.Role, join_through: "customer_role")
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
      zip: "49918",
      roles: [WithLove.Role.get(1)]
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
