-- 5 - Fazer Um programa que receba três valores A, B e C, os apresente em ordem crescente.

os.setlocale("pt_BR.UTF-8", "all")

math.randomseed(os.time())

local function bubble(arr)
        if not arr then
                return false
        end

        local n = #arr

        for i = 1, n do
                for j = n, i + 1, -1 do -- em Lua, arrays começam do 1, então  o índice realmente segue a posição lógica;
                        if arr[j] < arr[j - 1] then
                                arr[j - 1], arr[j] = arr[j], arr[j - 1]
                        end
                end
        end

        return true
end


local nums = {}

for i = 1, 10 do
        nums[i] = math.random(50)
end

-- imprimir array não sorteado aqui
if not bubble(nums) then
        print('Nums is invalid!')
        os.exit(0)
end

-- imprimir array sorteado aqui.