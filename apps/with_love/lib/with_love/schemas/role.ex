defmodule WithLove.Role do
  use Ecto.Schema
  import Ecto.Changeset

  schema "role" do
    field(:title, :string)
    many_to_many(:employees, WithLove.Employee, join_through: "employee_role")
  end

  def new() do
    [
      %__MODULE__{
        title: "Field Sales Rep"
      },
      %__MODULE__{
        title: "Inside Sales Rep"
      },
      %__MODULE__{
        title: "Project Manager"
      },
      %__MODULE__{
        title: "IT Admin"
      },
      %__MODULE__{
        title: "Installer"
      }
    ]
  end

  def create() do
    new()
    |> Enum.each(fn role -> WithLove.Repo.insert(role) end)
  end

  def get() do
    WithLove.Repo.get(__MODULE__, 1)
  end

  def get(id) when is_number(id) do
    WithLove.Repo.get(__MODULE__, id)
  end
end
