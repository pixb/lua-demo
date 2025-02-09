t = { "a", "b", "c", "d", "e" }

-- 下标迭代
for i = 1, #t do
	print(i, t[i])
end
print("\n")
-- ipairs迭代
for i, j in ipairs(t) do
	print(i, j)
end

-- 不连续,导致停止
t = {
	[1] = "a",
	[2] = "b",
	[3] = "c",
	[5] = "d",
}
print("\n")
for i, j in ipairs(t) do
	print(i, j)
end

print("\n")

for i, j in pairs(t) do
	print(i, j)
end

print("\n")

print(next(t))
print(next(t, 1))
print(next(t, 2))
print(next(t, 3))
print(next(t, 5))

print("\n")

t = {}
print(next(t))
