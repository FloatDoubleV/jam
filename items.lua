--Тут находятся предметы и оружие
local path = minetest.get_modpath("jam")
local S = default
power = 0.05

minetest.register_tool("jam:fswordorigin", {
	description = ("Меч Флоата"),
	inventory_image = "fsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=1, maxlevel=1},
		},
		damage_groups = {fleshy=20},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("jam:multi", {
	description = ("Смешанный Инструмент"),
	inventory_image = "multi.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=5,
		groupcaps={
			cracky = {times={[1]=power, [2]=power, [3]=power}, uses=90, maxlevel=3},
			crumbly = {times={[1]=power, [2]=power, [3]=power}, uses=90, maxlevel=3},
			choppy = {times={[2]=power, [3]=power}, uses=90, maxlevel=3},
			snappy={times={[1]=power, [2]=power, [3]=power}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1,axe = 1, shovel = 1}
})

minetest.register_tool("jam:ultra", {
	description = ("Омега меч"),
	inventory_image = "sword1.png",
	tool_capabilities = {
		full_punch_interval = 0.4,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=40, maxlevel=1},
		},
		damage_groups = {fleshy=100},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 3}
})

minetest.register_craftitem("jam:expapirus", {
	description = ("Экстракт папируса"),
	inventory_image = "expapirus.png",
	groups = {extracts=1},
	on_use = minetest.item_eat(-5),
})

minetest.register_craftitem("jam:expapirusingot", {
	description = ("Папирусный экстрактный слиток"),
	inventory_image = "expapirusingot.png",
	groups = {ingot = 1},
	on_use = minetest.item_eat(-15),
})

ChatCmdBuilder.new("setpower", function(cmd)
	cmd:sub(":pwr:number", function(name, pwr, power)
		 power = pwr
		if power then
		      power(pwr)
			  minetest.register_tool("jam:multicopy", {
	description = ("Смешанный Инструмент Копия"),
	inventory_image = "multi.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=5,
		groupcaps={
			cracky = {times={[1]=power, [2]=power, [3]=power}, uses=90, maxlevel=3},
			crumbly = {times={[1]=power, [2]=power, [3]=power}, uses=90, maxlevel=3},
			choppy = {times={[2]=power, [3]=power}, uses=90, maxlevel=3},
			snappy={times={[1]=power, [2]=power, [3]=power}, uses=90, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1,axe = 1, shovel = 1}
})
			return true, "Done"
		else
			return false
		end
	end)
end, {
	description = "Set hp of player",
	privs = {
		kick = true
		-- ^ probably better to register a custom priv
	}
})