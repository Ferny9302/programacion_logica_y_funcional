absoluto :: Integer -> Integer
absoluto x = abs x

mayor :: Double -> Integer
mayor x = ceiling x

siguiente :: Integer -> Integer
siguiente x = succ x

meno :: Integer -> Integer -> Integer
meno x y = min x y

mayo :: Integer -> Integer -> Integer
mayo x y = max x y

divi :: Integer -> Integer -> Integer
divi x y = div x y

modulo :: Integer -> Integer -> Integer
modulo x y = mod x y

par :: Integer -> Bool
par x = even x

menor :: Double -> Integer
menor x = floor x

maximo :: Integer -> Integer -> Integer
maximo x y = gcd x y

negacion :: Bool -> Bool
negacion x = not x

positivo :: Integer -> Integer
positivo x = signum x

retorna :: Integer -> Integer -> Integer
retorna x y = snd(x,y)

impar :: Integer -> Bool
impar x = odd x



menu :: IO()
menu = do
    putStrLn("😊😊 == Menu == 😊😊")
    putStrLn("¿Que deseas hacer?")
    putStrLn("1) Absoluto")
    putStrLn("2) Mayor")
    putStrLn("3) Siguiente")
    putStrLn("4) Menor de dos numeros")
    putStrLn("5) Mayor de dos numeros")
    putStrLn("6) Division")
    putStrLn("7) Modulo")
    putStrLn("8) Par")
    putStrLn("9) Menor")
    putStrLn("10) Maximo comun divisor")
    putStrLn("11) Negacion de booleana")
    putStrLn("12) Positivo o negativo")
    putStrLn("13) Retorna el segundo elemento")
    putStrLn("14) Impar")
    opcion <- getLine

    case opcion of
        "1" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(absoluto x) )
            menu
        "2" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El resultado es: "++ show(mayor x) )
            menu
        "3" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(siguiente x) )
            menu
        "4" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El numero menor es: "++ show(meno x y) )
            menu
        "5" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El numero mayor es: "++ show(mayo x y) )
            menu
        "6" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es: "++ show(divi x y) )
            menu
        "7" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es: "++ show(modulo x y) )
            menu
        "8" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(par x) )
            menu
        "9" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El resultado es: "++ show(menor x) )
            menu
        "10" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es: "++ show(maximo x y) )
            menu
        "11" -> do
            putStrLn("Introduce el valor: ")
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn("El resultado es: "++ show(negacion x) )
            menu
        "12" -> do
            putStrLn("Introduce el valor: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(positivo x) )
            menu
        "13" -> do
            putStrLn("Introduce el numero: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("Introduce el segundo numero: ")
            n2 <- getLine
            let y = read n2 :: Integer
            putStrLn("El resultado es: "++ show(retorna x y) )
            menu
        "14" -> do
            putStrLn("Introduce el valor: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: "++ show(impar x) )
            menu
        _ -> do
            putStrLn("Opcion no valida")
            menu

-- public static void main
main :: IO ()
main = menu

