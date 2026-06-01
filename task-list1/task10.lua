-- 10 - A prefeitura de Contagem abriu uma linha de crédito para seus funcionários. O valor máximo
-- da prestação não poderá ultrapassar 30% do salário bruto. Fazer um programa que permita entrar
-- salário bruto e o valor da prestação, e informar se o empréstimo pode ou não ser concedido.

os.setlocale("pt_BR", "all")
math.randomseed(os.time())

local maxSal = 15e3
local minSal = 5.5e3

local maxPrest = 11e3
local minPrest = 1.2e3

local sal = math.random(minSal, maxSal)
local prest = math.random(minPrest, maxPrest)

local prestLimit = sal * 0.3

if prest > prestLimit then
        print(prest .. ' é maior que 30% de ' .. sal .. ' logo o empréstimo não poderá ser concedido')
else
        print(prest .. ' é menor que 30% de ' .. sal .. ' logo o empréstimo poderá ser concedido')
end
