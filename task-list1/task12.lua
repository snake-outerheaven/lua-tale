-- 12 - A CEF concederá um crédito especial com juros de 2% aos seus clientes de acordo com o saldot
-- médio no último ano. Fazer um programa que leia o saldo médio de um cliente e calcule o valor do
-- crédito de acordo com a tabela a seguir. Imprimir uma mensagem informando o saldo médio e o valor
-- de crédito. De 0 a 500 Nenhum crédito - De 501 a 1000 30% do valor do saldo médio - De 1001 a
-- 3000 40% do valor do saldo médio - Acima de 3001 50% do valor do saldo médio

os.setlocale("pt_BR", "all")
math.randomseed(os.time())

local table_cef = {
        { lim = 500,       cred = 0 },
        { lim = 1000,      cred = 0.3 },
        { lim = 3000,      cred = 0.4 },
        { lim = math.huge, cred = 0.5 }
}

local function quick_test()
    local test_values = {200, 750, 1500, 3500}
    
    for _, balance in ipairs(test_values) do
        local credit = balance <= 500 and 0 or
                      balance <= 1000 and balance * 0.3 or
                      balance <= 3000 and balance * 0.4 or
                      balance * 0.5
        
        print(string.format("Saldo: R$ %.2f → Crédito: R$ %.2f", balance, credit))
    end
end

quick_test()