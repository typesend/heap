defmodule HeapWeb.Router do
  use HeapWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", HeapWeb do
    pipe_through :api
  end
end
