minetest.register_craftitem("trowel:trowel", {
    description = "My Special Item",
    inventory_image = "modname_itemname.png"
})

minetest.register_chatcommand("foo", {
	privs = {
		interact = true
	},
	func = function(name, param)
        local inv = minetest.get_inventory({type="player", name = name})
        local lists = inv:get_lists()
		for i, v in pairs(lists) do minetest.log('none', tostring(i) .. " = " .. tostring(v)) end      
	end
})