function deconode(id, name, texture, svet, dt, model)
minetest.register_node(id, {
	description = (name), 
	tiles = {texture},
	drop = id,
	drawtype = dt,
	groups = {cracky = 1}, 
	sounds = default.node_sound_stone_defaults(),
	paramtype = "facedir",
	paramtype2 = "light",
	sunlight_propagates = true,
	light_source = svet,
	on_place = minetest.rotate_node,
	mesh = model
})
end

function tool(id, name, invim, punchint, mdl, cpower, crumpower, choppower, snappower, dmg, pick, axe, showel, use)
minetest.register_tool(id, {
	description = (name),
	inventory_image = invim,
	tool_capabilities = {
		full_punch_interval = punchint,
		max_drop_level=mdl,
		groupcaps={
			cracky = {times={[1]=cpower, [2]=cpower, [3]=cpower}, use, maxlevel=3},
			crumbly = {times={[1]=crumpower, [2]=crumpower, [3]=crumpower}, use, maxlevel=3},
			choppy = {times={[2]=choppower, [3]=choppower}, use, maxlevel=3},
			snappy={times={[1]=snappower, [2]=snappower, [3]=snappower}, use, maxlevel=3},
		},
		damage_groups = {fleshy=dmg},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = pick,axe = axe, shovel = showel}
})
end

--Тесты
deconode("jam:api", "Api", "block1.png")
tool("jam:apitool", "Api Test Tool","fsword.png",1.3,5,1,2,2,2,10,1,1,1,70 )