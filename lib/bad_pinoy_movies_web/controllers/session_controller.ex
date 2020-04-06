defmodule BadPinoyMovies.SessionController do
  use BadPinoyMoviesWeb, :controller

  alias BadPinoyMovies.Accounts
  alias BadPinoyMoviesWeb.Auth

  def new(conn, _) do
    render(conn, "new.html")
  end

  def create(
        conn,
        %{"session" => %{"username" => username}, "password" => password}
      ) do
    case authenticate_by_username_and_pass(username, password) do
      {:ok, user} ->
        conn
        |> Auth.login(user)
        |> put_flash(:info, "Welcome back, #{user.name}!")
        |> redirect(to: Routes.page_path(conn, :index))

      {:error, reason} ->
        conn
        |> put_flash(:error, "Invalid username or password")
        |> render("new.html")
    end
  end
end
