-- 11 – Faça um programa para calcular o IMC de um indivíduo após a leitura de seu peso e altura. Em
-- seguida classifique-o pela tabela : IMC abaixo de 18,5 Abaixo do peso IMC de 18,5 até 24,9 Peso
-- Normal, IMC de 25 até 29,9 Sobre Peso IMC de 30 até 34,9 Obesidade Grau 1, IMC de 35 ate 39,9
-- Obesidade Grau 2, A partir 40 Obesidade Mórbida.

os.setlocale("pt_BR", "all")
math.randomseed(os.time())

local table_imc = {
        { limite = 18.5,      classif = "Abaixo do peso" },
        { limite = 24.9,      classif = "Peso normal" },
        { limite = 29.9,      classif = "Sobre Peso" },
        { limite = 34.9,      classif = "Obesidade Grau 1" },
        { limite = 39.9,      classif = "Obesidade Grau 2" },
        { limite = math.huge, classif = "Obesidade Mórbida" }
}

local maxWeight = 150
local minWeight = 40
local minHeight = 1.4
local maxHeight = 2.2

local weight = math.random() * (maxWeight - minWeight) + minWeight
local height = math.random() * (maxHeight - minHeight) + minHeight

local classif = "Não classificado"

local imc = weight / (height * height)

for _, faixa in ipairs(table_imc) do
        if imc <= faixa.limite then
                classif = faixa.classif
                break 
        end
end

print(string.format("Peso: %.2f kg", weight))
print(string.format("Altura: %.2f m", height))
print(string.format("IMC: %.2f", imc))
print("Classificação: " .. classif)
