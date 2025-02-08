package.preload["mymodule"] = function()
	local mymodule = {}
	mymodule.greet = function(name)
		return "hello, " .. name .. "!"
	end
	return mymodule
end

-- load mymodule
local mymodule = require("mymodule")

-- use mymodule function
print(mymodule.greet("World"))
