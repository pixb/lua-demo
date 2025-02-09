t = { a = 1 }
mt = {
	__add = function(a, b)
		return a.a + b
	end,
}
-- 设置元表
setmetatable(t, mt)
print(t + 1) -- 2

print("\n")

t = { a = 15 }
mt = {
	__index = function(table, key)
		return 0
	end,
}
setmetatable(t, mt)
print(t["abc"]) -- 0

-- 或者是个table
-- mt = {
-- 	__index = {
-- 		abc = 123,
-- 		def = 456,
-- 	}
-- }
--
print("\n")

t = { a = 15 }
mt = {
	__newindex = function(t, k, v)
		rawset(t, k, v)
	end,
}
setmetatable(t, mt)
t["abc"] = 1
print(t["abc"])
