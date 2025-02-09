local co = coroutine.create(function()
	print("hello coroutine")
	r1, r2, r3 = coroutine.yield(1, 2, 3)
	print("continue run~~~~", r1, r2, r3)
end)

print(type(co))
print(coroutine.resume(co))
print(coroutine.resume(co, 4, 5, 6))
