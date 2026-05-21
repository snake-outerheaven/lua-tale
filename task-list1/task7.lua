-- 7 - Fazer um programa leia dois números e efetue a sua adição.
-- Caso o valor encontrado seja maior que 20, este deverá ser apresentado somando-se a ele mais 8;
-- caso o valor somado seja menor ou igual a 20, este deverá ser apresentado subtraindo-se 5.

os.setlocale("pt_BR.UTF-8", "all")
math.randomseed(os.time())


local num1 = math.random(1, 100)
local num2 = math.random(1, 100)

print("Número 1: " .. num1)
print("Número 2: " .. num2)

local sum = num1 + num2

if sum > 20 then
    sum = sum + 8
else
    sum = sum - 5
end

print("Resultado final: " .. sum)