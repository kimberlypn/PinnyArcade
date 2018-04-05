# Taken from http://www.ccs.neu.edu/home/ntuck/courses/2018/01/cs4550/notes/12-microblog/notes.html
defmodule PinnyArcadeWeb.SessionController do
  use PinnyArcadeWeb, :controller

  alias PinnyArcadeWeb.Users
  alias PinnyArcadeWeb.Users.User

  def create(conn, %{"username" => username, "password" => password}) do
    user = Users.get_and_auth_user(username, password)
    if user do
      conn
      |> put_session(:user_id, user.id)
      |> put_flash(:info, "Welcome back #{user.username}")
      |> redirect(to: page_path(conn, :index))
    else
      conn
      |> put_flash(:error, "Can't create session")
      |> redirect(to: page_path(conn, :index))
    end
  end

  def delete(conn, _params) do
    conn
    |> delete_session(:user_id)
    |> put_flash(:info, "Logged out")
    |> redirect(to: page_path(conn, :index))
  end
end
