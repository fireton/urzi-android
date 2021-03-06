local std = stead

local iface = std.ref "@iface"
local instead = std.ref "@instead"

local function html_tag(nam)
	return function(s, str)
		if not str then return str end
		return '<'..nam..'>'..str..'</'..nam..'>'
	end
end

iface.bold = html_tag('b')
iface.em = html_tag('i')
iface.under = html_tag('u')
iface.st = html_tag('st')
iface.center = html_tag('center')
iface.right = html_tag('right')

instead.restart = instead_restart
instead.tiny = true