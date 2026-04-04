-- 4 – Fazer Um programa que leia três valores verifique se estes podem ser os lados de um triângulo,
-- caso afirmativo, classifique o triângulo quanto ao seu tipo. 

os.setlocale("pt_BR.UTF-8", "all")

local function check(a, b, c)
        return a < b + c and b < a + c and c < b + a
end
