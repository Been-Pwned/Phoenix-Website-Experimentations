defmodule A_Wesbite_MissionWeb.PageController do
  use A_Wesbite_MissionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
