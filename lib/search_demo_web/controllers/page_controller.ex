defmodule SearchDemoWeb.PageController do
  use SearchDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
