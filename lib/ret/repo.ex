defmodule Ret.Repo do
  @moduledoc false
  use Ecto.Repo, otp_app: :ret, adapter: Ecto.Adapters.Postgres
  use Scrivener, page_size: 20, max_page_size: 50

  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end

  def set_search_path(conn, path) do
    {:ok, _result} = Postgrex.query(conn, "set search_path=#{path}", [])
  end
end
