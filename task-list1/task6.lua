-- 6 - Fazer Um programa que receba três valores A, B , C e OP, quando OP=1
-- apresente em ordem crescente caso contrário os números devem ser apresentados em ordem decrescente.

os.setlocale("pt_BR.UTF-8", "all")

math.randomseed(os.time())

local max = 10

local function bubble(arr, op)

   if not arr then
      return false
   end

   local n = #arr


   for i = 1, n do
      for j = n, i + 1, -1 do
	 if op == 1 then
	    if arr[j] < arr[j - 1] then
	       arr[j], arr[j - 1] = arr[j - 1], arr[j]
	    end
	 else
	    if arr[j] > arr[j - 1] then
	       arr[j - 1], arr[j] = arr[j], arr[j - 1]
	    end
	 end
      end
   end

   return true
end

local function printArr(arr)
   for i = 1, #arr, 1 do
      print(arr[i])
   end
end


local arr = {}

for i = 1, max, 1 do
   arr[i] = math.random(1, 11)
end


local op = math.random(0, 1)


print('Array gerado:')

printArr(arr)

print("Op:", op)

if op == 1 then
   print('Organizando array de forma crescente')
   if not bubble(arr, op) then
      print('Falha ao organizar o array')
   end
   print('Imprimindo o array organizado')
   printArr(arr)
else
   print('Organizandoo o array de forma decrescente.')
   if not bubble(arr, op) then
      print('Falha ao organizar o array')
   end
   print('Imprimindo o array organizado')
   printArr(arr)
end
