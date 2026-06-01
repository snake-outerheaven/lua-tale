-- 8 - Escreva um programa que receba um número e imprima uma das mensagens: “é múltiplo de 3” ou “não é múltiplo de 3”.
-- Sabendo que na expressão (A= B%3) A receberá o resto da divisão de B por 3


os.setlocale("pt_BR.UTF-8", "all")
math.randomseed(os.time())


local a = {}

for i = 1, 10, 1 do
        a[i] = math.random(1, 100)
end


for i = 1, #a, 1 do
        if (a[i] % 3 == 0) then
                print(a[i] .. ' é multiplo de 3')
        else
                print(a[i] .. ' não é múltiplo de 3')
        end
end
