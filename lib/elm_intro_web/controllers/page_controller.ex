defmodule ElmIntroWeb.PageController do
  use ElmIntroWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
