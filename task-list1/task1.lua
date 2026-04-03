-- 1 - Fazer um programa que receba três valores e verifique se estes podem ser os lados de um triângulo.

os.setlocale("pt_BR.UTF-8", "all")

local x = math.random(0, 20)
local y = math.random(0, 20)
local z = math.random(0, 20)

if x < y + z and y < x + z and z < x + y then
        print('Um triângulo pode ser formado com os lados:', x, y, z)
else
        print('Não é possível formar um triângulo com os lados dados:', x, y, z)
end
