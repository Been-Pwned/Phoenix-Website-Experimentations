defmodule A_Wesbite_Mission.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      A_Wesbite_Mission.Repo,
      # Start the Telemetry supervisor
      A_Wesbite_MissionWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: A_Wesbite_Mission.PubSub},
      # Start the Endpoint (http/https)
      A_Wesbite_MissionWeb.Endpoint
      # Start a worker by calling: A_Wesbite_Mission.Worker.start_link(arg)
      # {A_Wesbite_Mission.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: A_Wesbite_Mission.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    A_Wesbite_MissionWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
