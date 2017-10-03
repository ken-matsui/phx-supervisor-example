defmodule SupervisorPhoenixWeb.PageController do
	use SupervisorPhoenixWeb, :controller

	def index(conn, _params) do
		params = SupervisorPhoenix.Counter.get_state
		call_inc(SupervisorPhoenix.Counter)
		render(conn, "index.html", params)
	end

	defp call_inc(process_name) do
		process_name.inc
	end

	def kill(conn, _) do
		SupervisorPhoenix.Counter.kill()
		url = page_path(conn, :index)
		redirect(conn, to: url)
	end
end
