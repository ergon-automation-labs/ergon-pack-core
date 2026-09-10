defmodule ErgonCorePack.Application do
  @moduledoc """
  Core pack supervisor.

  Starts a single Health.Responder for the entire VM when in pack mode.
  Individual bots skip their own Health.Responder when :pack_mode is true.
  """
  use Application

  @version Mix.Project.config()[:version]

  @impl true
  def start(_type, _args) do
    children =
      if Application.get_env(:bot_army_library_runtime, :pack_mode, false) do
        [
          {BotArmyLibraryRuntime.Health.Responder, [bot_name: :core_pack, version: @version]}
        ]
      else
        []
      end

    opts = [strategy: :one_for_one, name: ErgonCorePack.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
