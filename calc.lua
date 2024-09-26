
-- srglue "C:\Program Files\MYPATH\srlua.exe" .\calc.lua calclua.exe
--function rfix(inicial, periodo)
--    if periodo == "d" then 
--        lucro  = 0.00041666
--    elseif periodo == "m" then
--        lucro  = 0.008333333
--    elseif periodo == "a" then
--        lucro  = 0.10
--    else 
--        error(err)   
--    end
--
--    print(inicial*lucro)
--end
--function unhex( input )
--    return (input:gsub( "..", function(c)
--        return string.char( tonumber( c, 16 ) )
--    end))
--end



--inicial=1000; lucro=1.01; x = inicial*lucro   ;print(x)
--inicial=1000; lucro=1.01; x = inicial*lucro   ;print(x)
--print( 100+ (2%100))  -- porcentos aplicados

local utf8 = require "utf8"



print (string.format("ç´´oóóóó"))


lucro         = 0.06
vezes_dia     = 71 --igual a 6 horas por dia e uma aposta a cada 5 minutos
valor_inicial = 1000
---71 apostas de 14 reais

function qqq(...)
    print(valor_inicial*lucro)
end


function rfix(inicial)
    print("diário",inicial*0.00041666)
    print("mensal",inicial*0.008333333)
    print("anual" ,inicial*0.10)
end


function r_mes(inicial) 
    for mes = 1,12,1 do 
        rend    = inicial*0.00833
        inicial = inicial*1.00833 
        print ("MES:",mes)
        print (string.format("Total: %.2f\t" , inicial), 
               string.format("Rendeu: %.2f", rend))
    end
    return inicial
end

function r_anos(inicial, anos) 
    for ano = 1,anos,1 do 
        rend    = inicial*0.1
        inicial = inicial*1.1
        print ("\nANO:",ano)
        print (string.format("Total: %.2f\t", inicial), 
               string.format("Rendeu: %.2f" , rend))
    end
    return inicial
end

function r_anos_lista(inicial, anos)
    for ano = 1, anos, 1 do
        print("\nANO",ano, "\n")
        anual = r_mes(inicial)
    end
end



function stock(p_atual, p_venda, porcent)
    if porcent == nil then 
        porcent = 0.04
    end

    if p_venda == nil or p_venda == 0 then
       p_venda = ((p_atual/100)*(porcent+1))
       out_p = "O lucro de %.2f%% em %.2f = %.2f"
       print(string.format(out_p,porcent, p_atual, p_venda))
    else
       porcent = ((p_atual-p_venda)/p_atual)*100
       print(string.format(" >>>  %.2f%%", porcent*-1))
    end
end






