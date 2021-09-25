defmodule WithLove.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      WithLove.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: WithLove.PubSub}
      # Start a worker by calling: WithLove.Worker.start_link(arg)
      # {WithLove.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: WithLove.Supervisor)
  end
end
