-- 12 - A CEF concederá um crédito especial com juros de 2% aos seus clientes de acordo com o saldot
-- médio no último ano. Fazer um programa que leia o saldo médio de um cliente e calcule o valor do
-- crédito de acordo com a tabela a seguir. Imprimir uma mensagem informando o saldo médio e o valor
-- de crédito. De 0 a 500 Nenhum crédito - De 501 a 1000 30% do valor do saldo médio - De 1001 a
-- 3000 40% do valor do saldo médio - Acima de 3001 50% do valor do saldo médio

os.setlocale("pt_BR", "all")
math.randomseed(os.time())

-- Tabela de configuração das faixas de crédito
local table_cef = {
    { lim = 500,       cred = 0.0 },
    { lim = 1000,      cred = 0.3 },
    { lim = 3000,      cred = 0.4 },
    { lim = math.huge, cred = 0.5 }
}

local function calcular_credito_tabela(saldo)
    for _, faixa in ipairs(table_cef) do
        if saldo <= faixa.lim then
            return saldo * faixa.cred
        end
    end
    return 0
end

print("--- SIMULAÇÃO DE CRÉDITO CEF ---")
for i = 1, 5 do
    local saldo_aleatorio = math.random() * 5000
    local valor_credito = calcular_credito_tabela(saldo_aleatorio)

    print(string.format("Cliente %d | Saldo Médio: R$ %7.2f → Crédito: R$ %7.2f",
        i, saldo_aleatorio, valor_credito))
end
