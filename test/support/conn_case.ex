defmodule A_Wesbite_MissionWeb.ConnCase do
  @moduledoc """
  This module defines the test case to be used by
  tests that require setting up a connection.

  Such tests rely on `Phoenix.ConnTest` and also
  import other functionality to make it easier
  to build common data structures and query the data layer.

  Finally, if the test case interacts with the database,
  we enable the SQL sandbox, so changes done to the database
  are reverted at the end of every test. If you are using
  PostgreSQL, you can even run database tests asynchronously
  by setting `use A_Wesbite_MissionWeb.ConnCase, async: true`, although
  this option is not recommended for other databases.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with connections
      import Plug.Conn
      import Phoenix.ConnTest
      import A_Wesbite_MissionWeb.ConnCase

      alias A_Wesbite_MissionWeb.Router.Helpers, as: Routes

      # The default endpoint for testing
      @endpoint A_Wesbite_MissionWeb.Endpoint
    end
  end

  setup tags do
    A_Wesbite_Mission.DataCase.setup_sandbox(tags)
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
