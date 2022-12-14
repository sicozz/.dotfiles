-- Setup todo-comments
local status_ok, tc = pcall(require, "todo-comments")
if not status_ok then
	return
end

tc.setup()
