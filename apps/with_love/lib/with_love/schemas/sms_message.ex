defmodule WithLove.SMSMessage do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sms_message" do
    belongs_to :project, WithLove.Project
  end
end
