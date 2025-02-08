_G.count = 1
require("module.hello_module")
require("module.hello_module")
require("module.hello_module")
require("module.hello_module")
require("module.hello_module")
require("module.hello_module")
require("module.hello_module")
local hello_module = require("module.hello_module")
print(hello_module)
print(_G.count)

-- print package.path
print(package.path)

-- add package path
package.path = package.path .. ";./module/?.lua"
print(package.path)
require("hello_module")

-- use util module
local util = require("module.util")
util.say()
