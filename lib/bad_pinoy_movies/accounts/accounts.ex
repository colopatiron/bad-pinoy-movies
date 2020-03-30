defmodule BadPinoyMovies.Accounts do
  @moduledoc """
  The Accounts context
  """

  alias BadPinoyMovies.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Jem", username: "jemp"},
      %User{id: "2", name: "Mickey", username: "mickeym"},
      %User{id: "3", name: "Kiro", username: "kirok"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
