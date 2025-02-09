a = true
b = false
a = 3
print(a > 2)
print(a < 2)
print(a >= 2)
print(a <= 2)
print(a == 2)
print(a ~= 2)

-- 与或非
print(a and b)
print(a or b)
print(not a)

a = nil
b = 0
print(a and b)
print(a or b)

-- 三目
a = 3
print(a > 10 and "yes" or "no")

if a > 10 then
	print("a > 10")
elseif a < 5 then
	print("a < 5")
else
	print("a > 10 is false, a < 5 is false")
end
