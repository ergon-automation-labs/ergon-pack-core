defmodule ErgonCorePack.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :ergon_core_pack,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      releases: [
        core_pack: [
          applications: [
            bot_army_library_runtime: :permanent,
            bot_army_library_core: :permanent,
            bot_army_library_learning: :permanent,
            bot_army_gtd: :permanent,
            bot_army_llm: :permanent,
            bot_army_para: :permanent,
            bot_army_bridge_lite: :permanent,
            bot_army_synapse: :permanent,
            bot_army_dispatcher: :permanent,
            bot_army_skills: :permanent,
            bot_army_job_scheduler: :permanent,
            bot_army_graphify_cache: :permanent,
            ergon_core_pack: :permanent
          ]
        ]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ErgonCorePack.Application, []}
    ]
  end

  defp deps do
    [
      {:bot_army_library_core, path: "../bot_army_library_core"},
      {:bot_army_library_runtime, path: "../bot_army_library_runtime"},
      {:bot_army_library_learning, path: "../bot_army_library_learning"},
      {:bot_army_gtd, path: "../bot_army_gtd"},
      {:bot_army_llm, path: "../bot_army_llm"},
      {:bot_army_para, path: "../bot_army_para"},
      {:bot_army_bridge_lite, path: "../bot_army_bridge_lite"},
      {:bot_army_synapse, path: "../bot_army_synapse"},
      {:bot_army_dispatcher, path: "../bot_army_dispatcher"},
      {:bot_army_skills, path: "../bot_army_skills"},
      {:bot_army_job_scheduler, path: "../bot_army_job_scheduler"},
      {:bot_army_graphify_cache, path: "../bot_army_graphify_cache"}
    ]
  end
end
