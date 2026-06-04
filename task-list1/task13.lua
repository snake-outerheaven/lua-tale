-- 13 - A confederação brasileira de natação fará o cadastro de atletas por categoria. Fazer um
-- programa que receba a idade de um nadador e apresente a sua categoria segundo as seguintes faixas:
-- Infantil A 5 – 7 anos -- Infantil B 8 – 10 anos -- Juvenil A 11 – 13 anos -- Juvenil B 14 – 17 anos.

os.setlocale("pt_BR", "all")
math.randomseed(os.time())

local age_table = {
        { liminf = 5,  limsup = 7,  label = "Infantil A" },
        { liminf = 8,  limsup = 10, label = "Infantil B" },
        { liminf = 11, limsup = 13, label = "Juvenil A" },
        { liminf = 14, limsup = 17, label = "Juvenil B" }
}

for i = 1, 10 do
        local idade = math.random(5, 17)
        local categoria = "Não classificado"

        for _, item in ipairs(age_table) do
                if idade >= item.liminf and idade <= item.limsup then
                        categoria = item.label
                        break
                end
        end

        print(string.format("Atleta %d | Idade: %2d anos → Categoria: %s", i, idade, categoria))
end
