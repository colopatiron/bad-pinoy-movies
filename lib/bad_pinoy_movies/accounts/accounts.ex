defmodule BadPinoyMovies.Accounts do
  @moduledoc """
  The Accounts context
  """

  alias BadPinoyMovies.Repo
  alias BadPinoyMovies.Accounts.User

  def list_users do
    Repo.all(User)
  end

  def get_user(id) do
    Repo.get(User, id)
  end

  def get_user!(id) do
    Repo.get!(User, id)
  end

  def get_user_by(params) do
    Repo.get_by(User, params)
  end
end
