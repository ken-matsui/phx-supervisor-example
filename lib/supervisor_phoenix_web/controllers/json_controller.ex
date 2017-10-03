defmodule SupervisorPhoenixWeb.JsonController do
	use SupervisorPhoenixWeb, :controller

	def index(conn, _params) do
		param = SupervisorPhoenix.Counter.get_state
		call_inc(SupervisorPhoenix.Counter)
		json conn, %{count: param.count}
	end

	defp call_inc(process_name) do
		process_name.inc
	end
end