--Тут находятся крафты из мода
--Если что, это всего лишь тесты и забавы автора
--Не удивляйтесь нахождению алмазов из под ног
--Также чтобы узнать id предмета, я использовал мод Unified Inventory

local F = default
local C = customcrafts
--Алмаз (Обычный крафт с 1 предметом)
--output - То, что мы получаем
--recipe - Ингредиенты
minetest.register_craft({
		output = "default:diamond",
		recipe = {{"default:apple"}}
	})
--Рецепт с формой выкладывания
--Может быть 3 строки по 3 предмета
--Если нужна пустая ячейка оставь кавычки пустыми
minetest.register_craft({
		output = "default:diamond ",
		recipe = {
		                {"default:dirt","default:dirt","default:dirt"},
		                 {"default:dirt","default:dirt","default:dirt"},
						 {"default:dirt","default:dirt","default:dirt"}}
	})
--Яблоко
--Число после default:apple, означает кол-во получаемых предметов
minetest.register_craft({
		output = "default:apple 10",
		recipe = {{"default:stick"}}
	})
minetest.register_craft({
        output = "default:apple 16",
		recipe = {
		             {"default:apple","default:apple"},
					 {"default:apple","default:apple"}}
	})
--Камень
minetest.register_craft({
		output = "default:stone 99",
		recipe = {{"default:snow"}}
	})
--Трава
minetest.register_craft({
        output = "default:dirt 4",
		recipe = {{"default:dirt", "default:dirt"}}
	})
--Нить
minetest.register_craft({
        output = "farming:string 4",
		recipe = {{"default:dirt", "default:dirt","default:dirt"}}
	})
--Кактус
minetest.register_craft({
        output = "default:cactus 99",
		recipe = {{"default:diamond"}}
	})

minetest.register_craft({
        output = "jam:fswordorigin",
		recipe = {{"","default:dirt",""},
		                {"","default:dirt",""},
						{"","default:stick",""}}
})

minetest.register_craft({
         output = "jam:expapirus",
		 recipe = {{"default:papyrus"}}
})

minetest.register_craft({
		output = "jam:expapirusingot ",
		recipe = {
		                {"jam:expapirus","jam:expapirus","jam:expapirus"},
		                 {"jam:expapirus","jam:expapirus","jam:expapirus"},
						 {"jam:expapirus","jam:expapirus","jam:expapirus"}}
						 })
						 
minetest.register_craft({
		output = "jam:multi",
		recipe = {
		                {"default:diamond","jam:expapirus","default:diamond"},
		                 {"default:diamond","jam:expapirus","default:diamond"},
						 {"default:steel_ingot","default:stick","default:steel_ingot"}}
						 })
				
minetest.register_craft({
		output = "jam:ultra",
		recipe = {
		                {"default:diamond","jam:expapirusingot","default:diamond"},
		                 {"","jam:expapirusingot",""},
						 {"","default:diamond",""}}
						 })