defmodule Ret.Repo.Migrations.AddUserDataToHub do
  @moduledoc false
  use Ecto.Migration

  def change do
    alter table("hubs") do
      add(:user_data, :jsonb)
    end
  end
end
