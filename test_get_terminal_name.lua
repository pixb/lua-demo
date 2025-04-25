local function is_number(str)
	return tonumber(str) ~= nil
end

local function get_parent_pid(pid)
	if pid == nil then
		pid = "$$"
	end
	local command = "ps -p " .. pid .. " -o ppid="
	command = command:gsub("\n", "")
	print("get_parent_pid(), command:", command)
	local handle = io.popen(command)
	local result = handle:read("*a")
	handle:close()
	return result
end

local function get_terminal_name()
	local command =
		"ps -p $(ps -p $(ps -p $(ps -p $(ps -p $(ps -p $(ps -p $(ps -p $$ -o ppid=) -o ppid=) -o ppid=) -o ppid=) -o ppid=) -o ppid=) -o ppid=)"
	local handle = io.popen(command)
	local result = handle:read("*a")
	handle:close()
	return result
end

print(get_terminal_name())
