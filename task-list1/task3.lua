-- 3 - Fazer um programa que receba o peso e a altura de uma pessoa e calcule o seu IMC Índice de Massa Corporal.
--IMC=peso/(altura X altura) Verifique se o indivíduo está no peso ideal. IMC>=18.5 e IMC<25q

os.setlocale("pt_BR.UTF-8", "all")

math.randomseed(os.time())

local peso       = math.random() * (150 - 45) + 45
local altura     = math.random() * (2.10 - 1.40) + 1.40
local imc        = peso / (altura * altura)

local peso_fmt   = string.format("%.2f", peso)
local altura_fmt = string.format("%.2f", altura)
local imc_fmt    = string.format("%.2f", imc)

print("Indivíduo com peso " .. peso_fmt ..
      " kg e altura " .. altura_fmt ..
      " m tem IMC = " .. imc_fmt)

if imc < 18.5 then
   print("Classificação: Abaixo do peso")
elseif imc >= 18.5 and imc < 25 then
   print("Classificação: Peso normal")
elseif imc >= 25 and imc < 30 then
   print("Classificação: Sobrepeso")
elseif imc >= 30 and imc < 35 then
   print("Classificação: Obesidade grau I")
elseif imc >= 35 and imc < 40 then
   print("Classificação: Obesidade grau II")
else
   print("Classificação: Obesidade grau III (mórbida)")
end
