defmodule PapertrailTestWeb.PageController do
  use PapertrailTestWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
