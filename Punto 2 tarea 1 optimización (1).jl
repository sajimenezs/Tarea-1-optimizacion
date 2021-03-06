#Usaremos un polinomio de grado 7 para aproximar los datos dados. Aplicando el método de mínimos cuadrados, obtenemos que#

A=[1 1 1 1 1 1 1 1;2^7 2^6 32 16 8 4 2 1;3^7 3^6 243 81 27 9 3 1;4^7 4^6 1024 256 64 16 4 1;5^7 5^6 3125 625 125 25 5 1;6^7 6^6 7776 1236 216 36 6 1;7^7 7^6 16087 2401 343 49 7 1;8^7 8^6 32768 4096 512 64 8 1;9^7 9^6 59049 6561 729 81 9 1;10^7 10^6 100000 10000 1000 100 10 1;11^7 11^6 11^5 11^4 11^3 11^2 11 1;12^7 12^6 12^5 12^4 12^3 12^2 12 1;13^7 13^6 13^5 13^4 13^3 13^2 13 1;14^7 14^6 14^5 14^4 14^3 14^2 14 1;15^7 15^6 15^5 15^4 15^3 15^2 15 1; 16^7 16^6 16^5 16^4 16^3 16^2 16 1;17^7 17^6 17^5 17^4 17^3 17^2 17 1;18^7 18^6 18^5 18^4 18^3 18^2 18 1;19^7 19^6 19^5 19^4 19^3 19^2 19 1;20^7 20^6 20^5 20^4 20^3 20^2 20 1;21^7 21^6 21^5 21^4 21^3 21^2 21 1;22^7 22^6 22^5 22^4 22^3 22^2 22 1;23^7 23^6 23^5 23^4 23^3 23^2 23 1;24^7 24^6 24^5 24^4 24^3 24^2 24 1;25^7 25^6 25^5 25^4 25^3 25^2 25 1]

b=[38014.8;38403.1;39395.8;39142.7;42463.0;43912.8;44420.3;43188.2;37689.1;39115.5;39209.6;38339.2;37224.6;40000.1;40552.8;43883.6;44544.4;42550.3;42061.1;42205.2;42388.4;43521.0;44388.9;44038.2;43833.9]


x = transpose(A)*A \ transpose(A)*b #Estos son los coeficientes del polinomio#

import Pkg; Pkg.add("Plots")
using Plots



plot(b) #Graficamos los datos dados#


f(x)=(6.885823984708308*10^-11)*x^7+0.009233968957349438*x^6-0.6819245696922893*x^5+18.41227043495529*x^4-215.84381582703816*x^3+956.1373535094963*x^2-162.90296646956995*x+36599.98158571445
plot(f,1,25) #Graficamos el polinomio de grado 7 de mejor ajuste#

#A continuación, compareremos la predicción de los precios del bitcoin para la próxima semana usando el polinomio encontrado con los precios reales(abajo). 
#Se puede comprobar que este polinomio, aunque aproxima mucho mejor los datos dados que una línea recta, no realiza predicciones de precios futuros muy exactas, pues crece con mucha rapidez desde el día 25.

[f(26);f(27);f(28);f(29);f(30);f(31);f(32)]

[43478.7;45505.8;45314.3;46232.9;46732.8;45681.2;45388.8]


