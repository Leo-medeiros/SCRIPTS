SELECT
    FORMAT(123456.99, 'C'), -- Formato de moeda padr�o
    FORMAT(-123456.987654321, 'C4'), -- Formato de moeda com 4 casas decimais
    FORMAT(123456.987654321, 'C2', 'pt-br') -- Formato de moeda for�ando a localidade pra Brasil e 2 casas decimais

SELECT
    FORMAT(123456.99, 'D'), -- Formato de n�mero inteiro com valores numeric (NULL)
    FORMAT(123456, 'D'), -- Formato de n�mero inteiro
    FORMAT(-123456, 'D4'), -- Formato de n�mero inteiro com valores negativos
    FORMAT(123456, 'D10', 'pt-br'), -- formato de n�mero inteiro com tamanho fixo em 10 caracteres
    FORMAT(-123456, 'D10', 'pt-br') -- formato de n�mero inteiro com tamanho fixo em 10 caracteres

SELECT
    FORMAT(123456.99, 'E'), -- Formato de nota��o cient�fica
    FORMAT(123456.99, 'E4') -- Formato de nota��o cient�fica e 4 casas decimais de precis�o

SELECT
    FORMAT(0.5, 'P'), -- Formato de porcentagem
    FORMAT(1, 'P2'), -- Formato de porcentagem com 2 casas decimais
    FORMAT(0.91, 'P'), -- Formato de porcentagem
    FORMAT(0.005, 'P4') -- Formato de porcentagem com 4 casas decimais

SELECT
    FORMAT(255, 'X'), -- Formato hexadecimal
    FORMAT(512, 'X8') -- Formato hexadecimal fixando o retorno em 8 caracteres