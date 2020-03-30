defmodule BadPinoyMoviesWeb.UserView do
  use BadPinoyMoviesWeb, :view

  alias BadPinoyMovies.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
