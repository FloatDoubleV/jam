--Тут находятся блоки, добавляемые модом
--Скрипты могли быть взяты из других модов
--Рисовать у меня не особо, но в будущем лучше :)
local  N = default

--Неизвестный Блок (Тест 1 блока, Заготовка блока с 1 текстурой)
--Скрипт ориг. игры
minetest.register_node("jam:unknown", {
	description = ("Неизвестный"), 
	tiles = {"customcrafts_unknown.png"},
	drop = "jam:unknown",
	groups = {cracky = 2}, 
	sounds = default.node_sound_stone_defaults(),
	paramtype2 = "facedir",
	sunlight_propagates = true,
	on_place = minetest.rotate_node
})
--Минималистичная Трава (Тест,Заготовка блока с 3 текстурами)
--Скрипт из файлов основной игры
minetest.register_node("jam:fgrass", {
	description = ("Минималистичная Трава"), 
	tiles = {"fgrasstop.png", "fgrassdown.png",
		{name = "fgrassdown.png^fgrassside.png",
			tileable_vertical = false}},
	drop = "jam:fgrass",
	groups = {cracky = 1}, 
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.25},
		})
	
})
--Блок с прозрачной текстурой (Заготовка)
minetest.register_node("jam:proz", {
	description = ("Прозрачный"), 
	drawtype = "glasslike",
	tiles = {"proz.png"},
	drop = "jam:proz",
	light_source = default.LIGHT_MAX,
	groups = {cracky = 1, leaves = 1}, 
	sounds = default.node_sound_stone_defaults(),
	paramtype2 = "light",
	on_place = minetest.rotate_node
})
--Тетра
minetest.register_node("jam:tetral", {
	description = ("Тетра"), 
	tiles = {"tetraL.png"},
	drop = "jam:tetral",
	groups = {cracky = 3}, 
	sounds = default.node_sound_stone_defaults(),
	paramtype2 = "facedir",
	on_place = minetest.rotate_node
})
-- Блок 1
minetest.register_node("jam:block1l", {
	description = ("Block1"), 
	tiles = {"block1.png"},
	drop = "jam:block1l",
	groups = {cracky = 1}, 
	sounds = default.node_sound_stone_defaults(),
	paramtype2 = "facedir",
	sunlight_propagates = true,
	on_place = minetest.rotate_node
})
--Блок 2
minetest.register_node("jam:russia", {
	description = ("Russia"), 
	tiles = {"block2.png"},
	drop = "jam:russia",
	groups = {cracky = 3, stone = 3}, 
	sounds = default.node_sound_stone_defaults(),
	paramtype = "facedir",
	sunlight_propagates = true,
	on_place = minetest.rotate_node
})
--Блок 3
minetest.register_node("jam:block3", {
	description = ("LightBlock3"), 
	tiles = {"block3.png"},
	drop = "jam:block3",
	groups = {cracky = 1}, 
	sounds = default.node_sound_stone_defaults(),
	paramtype2 = "facedir",
	sunlight_propagates = true,
	light_source = default.LIGHT_MAX,
	on_place = minetest.rotate_node
})
--Тест модели блока
minetest.register_node("jam:modeltest", {
	description = "Test ",
	tiles = {"tex.png"},
	drawtype = "mesh",
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
	mesh = "test.obj"
})
--Красная сфера
minetest.register_node("jam:redsphere", {
	description = "Красная сфера ",
	tiles = {"texture.png"},
	drawtype = "mesh",
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
	mesh = "model.obj"
})
--Колесо
minetest.register_node("jam:koleso", {
	description = "Колеса ",
	tiles = {"Koleso.png"},
	drawtype = "mesh",
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
	mesh = "whill.obj"
})
--кубок
minetest.register_node("jam:k", {
	description = "Кубок ",
	tiles = {"k.png"},
	drawtype = "mesh",
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
	mesh = "k.obj",
	use_texture_alpha = "alpha",
	collision_box = {type = "regular"},
	node_box = {
			type = "fixed",
			fixed = {
				{-0.2, -0.9, -0.2, 0.3, 0.3, 0.3},
			},
		},
})
--Шипы
minetest.register_node("jam:spike", {
	description = "Шипы",
	tiles = {"s.png"},
	drawtype = "mesh",
	paramtype = "light",
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
	mesh = "s.obj"
})
--Лампа
minetest.register_node("jam:lamp", {
	description = "Лямпа",
	tiles = {"lamp.png"},
	drawtype = "mesh",
	paramtype = "light",
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
	light_source = 14,
	mesh = "lamp.obj",
		node_box = {
			type = "fixed",
			fixed = {
				{0, -0, 0, 0.0, 0.0, 0.0},
			},
		},
})
--Нельзя (Тест функции из api.lua)
deconode("jam:dont","Нельзя","dont.png",3)
deconode("jam:paint","Картина","paint.png",4,"mesh","paint.obj")