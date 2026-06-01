-- 9 - Escreva um programa que leia um número e informe se ele é divisível por 3 e por 7.

os.setlocale("pt_BR.UTF-8", "all")
math.randomseed(os.time())

local size = math.random(1, 14)

local a = {}

for i = 1, size, 1 do
        a[i] = math.random(0, 255)
end


for i = 1, #a, 1 do
        if (a[i] % 3 == 0) and (a[i] % 7 == 0) then
                print(a[i] .. ' é divisível por 3 e por 7.')
        else
                print(a[i] .. ' não é divisível por 3 e por 7.')
        end
end
