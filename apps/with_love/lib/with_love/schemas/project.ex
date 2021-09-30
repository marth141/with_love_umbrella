defmodule WithLove.Project do
  use Ecto.Schema
  import Ecto.Changeset

  # Projects are some aggregate
  # Might have things like permits
  schema "project" do
    belongs_to(:customer, WithLove.Customer)
    has_many(:calls, WithLove.Call)
    has_many(:emails, WithLove.Email)
    has_many(:sms_messages, WithLove.SMSMessage)
    has_one(:proposal_agreement, WithLove.ProposalAgreement)
    has_many(:proposals, WithLove.Proposal)
    has_one(:install_agreement, WithLove.InstallAgreement)
    has_many(:designs, WithLove.Design)
    # TODO maybe active or approved design
    has_many(:permits, WithLove.Permit)
    has_one(:install, WithLove.Install)
    has_many(:inspections, WithLove.Inspection)
    has_many(:bills_of_materials, WithLove.BillOfMaterial)
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
