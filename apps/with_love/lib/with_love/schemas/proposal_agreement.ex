defmodule WithLove.ProposalAgreement do
  use Ecto.Schema
  import Ecto.Changeset

  schema "proposal_agreement" do
    belongs_to :project, WithLove.Project
  end
end
