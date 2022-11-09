--Получение пути мода
local path = minetest.get_modpath("jam")

--Выполнение скриптов 
dofile(path.. "/api.lua")
dofile(path .. "/crafts.lua")
dofile(path .. "/blocks.lua")
dofile(path .. "/items.lua")