defmodule Heap.Repo do
  use Ecto.Repo,
    otp_app: :heap,
    adapter: Ecto.Adapters.Postgres
end
