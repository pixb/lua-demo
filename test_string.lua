-- double quotes
a = "aaaaaaaaaaaaa"
-- single quotes
b = "bbbbbbbbbbbbb"
-- 转义
c = "ccc\nccc"
-- 元义输出
d = [[dddd
\nddddddddddd
ddddddd
]]
-- 字符串连接
e = a .. b
-- 字符串转换
f = tostring(10)
-- 转数字
g = tonumber("10")
-- 转换失败
h = tonumber("aaaaa")
-- string length #
i = #a

print(a)
print(b)
print(c)
print(d)
print(e)
print(f)
print(h)
print(i)

-- 十六进制转字符串
s = string.char("0x30", "0x31", "0x32", "0x33")
print(s)

-- 取字符串某一位
n = string.byte(s, 2)
print(n)

-- 字符串中字符串ASCII
local s = "123456"
string.byte(s, 1)
s:byte(1) -- 49
s:byte(1, -1) -- 49 50 51 52 53 54
print(s:byte())

-- 字符的ASCII转字符
string.char(0x35, 0x36) -- 56

-- format格式化字符串
string.format("%d,%d", 1, 2)

-- 转小写
s:lower("ABC")
s:upper("abc")

-- pack()字节打包
local b = string.pack("<ii", 10, 20)

--sub子串
local s = ":h:h:h:h"
print(s:sub(5))

--match()匹配
local s = "aaa/bbb"
print(s:match(".*/(.*)"))
