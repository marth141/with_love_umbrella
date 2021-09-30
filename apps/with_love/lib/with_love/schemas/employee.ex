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
        fname: "Chell",
        lname: "Protagonist",
        email: "chell.protagonist@aperaturescience.com"
      },
      %__MODULE__{
        fname: "Doug",
        lname: "Rattmann",
        email: "doug.rattmann@aperturescience.com"
      },
      %__MODULE__{
        fname: "Tony",
        lname: "Stark",
        email: "tony.stark@aperturescience.com"
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
