-- uint32_t n = 0x00000001;

-- 小端
local data = string.pack("<I", 1)
print("len:", #data)
print(string.byte(data, 1))
print(string.byte(data, 2))
print(string.byte(data, 3))
print(string.byte(data, 4))

-- 大端
local data = string.pack(">I", 1)
print("len:", #data)
print(string.byte(data, 1))
print(string.byte(data, 2))
print(string.byte(data, 3))
print(string.byte(data, 4))

local r1, r2 = string.unpack(">II", data .. data)

print(r1, r2)
