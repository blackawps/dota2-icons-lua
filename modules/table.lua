function table.merge(first, second)
	for k,v in pairs(second) do
		first[k] = v
	end
end

function table.HasValue(tbl, val)
	for key, value in pairs(tbl) do
		if (value == val) then return true, key end
	end
	return false
end

function table.Print(tbl, indent, done)
	done = done or {[tbl] = true}
	indent = indent or 0
   
	for k, v in pairs(tbl) do
		if (type(v) == "table" and not done[v]) then
			print(string.rep("\t", indent) .. string.format("%q", tostring(k)))
			done[v] = true
			table.Print(v, indent + 2, done)
		else
			print(string.rep("\t", indent) .. string.format("%q", tostring(k)) .. "\t=\t" .. string.format("%q", tostring(v)))
		end
	end
end

PrintTable = table.Print

function table.Copy(object)
	local lookup_table = {}
	local function _copy(object)
		if type(object) ~= "table" then
			return object
		elseif lookup_table[object] then
			return lookup_table[object]
		end
		local new_table = {}
		lookup_table[object] = new_table
		for index, value in pairs(object) do
			new_table[_copy(index)] = _copy(value)
		end
		return setmetatable(new_table, getmetatable(object))
	end
	return _copy(object)
end