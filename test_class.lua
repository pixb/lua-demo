bag = {}
bagmt = {
	put = function(t, item)
		table.insert(t.items, item)
	end,
	take = function(t)
		return table.remove(t.items)
	end,
	list = function(t)
		return table.concat(t.items, ",")
	end,
	clear = function(t)
		t.items = {}
	end,
}
bagmt["__index"] = bagmt
-- 构造
function bag.new()
	local t = {
		items = {},
	}
	setmetatable(t, bagmt)
	return t
end
local b = bag.new()
b:put("apple")
b:put("apple")
b:put("apple")
b:put("apple")
print(b:take())
print(b:list())
b:clear()
