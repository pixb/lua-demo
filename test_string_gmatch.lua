local path = "/home/pix/dev/linux-demo/"

for word in string.gmatch(path, "[^/\\]+") do
	print(word)
end
