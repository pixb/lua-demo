function get_file_type(file_path)
	local file = io.open(file_path, "rb")
	if not file then
		return nil
	end

	local magic = file:read(12) -- 读取文件的前8个字节
	file:close()

	print("magic:subk1, 4):" .. magic:sub(1, 4))
	print("magic:sub(9, 12):" .. magic:sub(9, 22))

	if magic:sub(1, 8) == "\137PNG\r\n\26\n" then
		return "image/png"
	elseif magic:sub(1, 2) == "\255\216" then
		return "image/jpeg"
	elseif magic:sub(1, 3) == "GIF" then
		return "image/gif"
	-- 可以继续添加其他文件类型的判断
	elseif magic:sub(1, 4) == "RIFF" and magic:sub(9, 12) == "WEBP" then
		return "image/webp"
	else
		return "unknown"
	end
end

-- 示例用法
local file_type = get_file_type("/home/pix/Pictures/1.webp")
print(file_type) -- 输出: image/png
