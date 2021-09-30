defmodule WithLove.InstallAgreement do
  use Ecto.Schema
  import Ecto.Changeset

  schema "install_agreement" do
    belongs_to :project, WithLove.Project
  end
end
