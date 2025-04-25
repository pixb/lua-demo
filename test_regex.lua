local s = "abcdefg"
print(string.find(s, "cde")) -- 3 5
print(s:match("cde"))

print(string.match("abcda12345aaaaaaaa", "a([%d]+)"))
-- 12345
-- 取多个
print(string.match("abcda12345%aaaaaaaa", "a([%d]+)(.)"))
-- 12345 %

local s = "abcdefg1234aaabbbccc"
print(s:gsub("%d", "x"))

s = "hello world from Lua"
for w in s:gmatch("%a+") do
	print(w)
end

s = "![631](/mnt/c/Users/pix/Pictures/631.jpg)"
print(s:match("!%[(.-)%]"))
