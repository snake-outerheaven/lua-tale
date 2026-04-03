-- 2 – Fazer um programa que receba duas notas N1, N2 e o percentual de Frequência de um aluno e verifique a situação do aluno: (Aprovado – Reprovado – Prova Final)

os.setlocale("pt_BR.UTF-8", 'all')

local n1 = math.random(0, 10)
local n2 = math.random(0, 10)
local freq = math.random(0, 100)

local media = (n1 + n2) / 2

print('Dados gerados: ', n1, n2, freq, media)

if media >= 7 and freq >= 75 then
        print("Aluno está aprovado!")
elseif media >= 6 and freq >= 75 then
        print("Aluno está na prova final")
else
        print("Aluno está reprovado.")
end
