defmodule A_Wesbite_MissionWeb.NewpageController do
  use A_Wesbite_MissionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
