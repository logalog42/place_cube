minetest.register_craftitem("trowel:trowel", {
    description = "My Special Item",
    inventory_image = "modname_itemname.png",
	on_place = function(itemstack, placer, pointed_thing)
		--local inv = minetest.get_inventory({type="player", name = placer[nametag]})
        --local lists = inv:get_list('main')
		--local slot = math.random(1, 8)
		--minetest.set_node(pointed_thing[above], lists[slot])
		--local testing = getmetatable(placer)
		--for i, v in pairs(pointed_thing) do minetest.log('none', tostring(i) .. " = " .. tostring(v)) end
		minetest.log('none', get_name(placer))
	end,

})

minetest.register_chatcommand("foo", {
	privs = {
		interact = true
	},
	func = function(name, param)
        local inv = minetest.get_inventory({type="player", name = name})
        local lists = inv:get_list('main')
		for i, v in pairs(lists) do minetest.log('none', tostring(i) .. " = " .. tostring(v)) end
		local slot = math.random(1, 8)
		minetest.log('none', tostring(lists[slot]))
	end
})