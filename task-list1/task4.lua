-- 4 – Fazer Um programa que leia três valores verifique se estes podem ser os lados de um triângulo,
-- caso afirmativo, classifique o triângulo quanto ao seu tipo. 

os.setlocale("pt_BR.UTF-8", "all")

math.randomseed(os.time())

local a = math.random(0, 20)
local b = math.random(0, 20)
local c = math.random(0, 20)

local tipo = ""

if not (a < b + c) and not (b < a + c) and not (c < b + a) then
        print('não se pode fazer um triângulo com', a, b, c)
        os.exit(0)
end

if a == b and a == c then
        tipo = tipo .. "Equilátero"
elseif a == b or a == c or b == c then -- faltou verificar b == c ;-;
        tipo = tipo .. "Isósceles"
else
        tipo = tipo .. "Escaleno"
end

print('O tipo de triângulo que ' .. a .. ', ' .. b .. ' e ' .. c .. ' formam é ' .. tipo .. '.')
