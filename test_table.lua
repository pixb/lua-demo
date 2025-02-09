a = {}
a = { 1, "abc", {}, function() end }
print(a)
a[5] = "55555"
print(a[5])
print(#a)

table.insert(a, "t")
print(a[6])

table.insert(a, 2, "d")
print(a[2])

local d = table.remove(a, 2)
print(d)

map = {
	a = 1,
	b = "abc",
	c = function() end,
	d = 1234,
}

print(map["a"])
print(map.d)

map[",;"] = "aaaaaa"
print(map[",;"])
