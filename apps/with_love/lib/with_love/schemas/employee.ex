defmodule WithLove.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  schema "employee" do
    field(:fname, :string)
    field(:lname, :string)
    field(:email, :string)
    has_many :field_sales_customers, WithLove.Customer, foreign_key: :field_sales_rep_id
    has_many :inside_sales_customers, WithLove.Customer, foreign_key: :inside_sales_rep_id
    has_many :project_managers_customers, WithLove.Customer, foreign_key: :project_manager_id
    many_to_many :roles, WithLove.Role, join_through: "employee_role"
  end

  def new() do
    [
      %__MODULE__{
        fname: "Cave",
        lname: "Johnson",
        email: "cave.johnson@aperturescience.com",
        roles: [WithLove.Role.get(2)]
      },
      %__MODULE__{
        fname: "Doug",
        lname: "Rattmann",
        email: "doug.rattmann@aperturescience.com",
        roles: [WithLove.Role.get(3)]
      },
      %__MODULE__{
        fname: "Caroline",
        lname: "Gelbart",
        email: "caroline.gelbart@aperturescience.com",
        roles: [WithLove.Role.get(4)]
      },
      %__MODULE__{
        fname: "Glados",
        lname: "Isserman",
        email: "glados.isserman@aperturescience.com",
        roles: [WithLove.Role.get(5)]
      },
      %__MODULE__{
        fname: "Wheatley",
        lname: "Bennett",
        email: "wheatley.bennett@aperturescience.com",
        roles: [WithLove.Role.get(6)]
      },
      %__MODULE__{
        fname: "Atlas",
        lname: "Whitten",
        email: "atlas.whitten@aperturescience.com",
        roles: [WithLove.Role.get(7)]
      },
      %__MODULE__{
        fname: "Peabody",
        lname: "Amaturo",
        email: "peabody.amaturo@aperturescience.com",
        roles: [WithLove.Role.get(8)]
      }
    ]
  end

  def create() do
    new()
    |> Enum.each(fn employee -> WithLove.Repo.insert(employee) end)
  end

  def get() do
    WithLove.Repo.get(__MODULE__, 1)
  end

  def get(id) when is_number(id) do
    WithLove.Repo.get(__MODULE__, id)
  end
end
