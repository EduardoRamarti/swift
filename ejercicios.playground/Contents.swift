import UIKit

// Dadas dos variables, calcular la suma, almacenar el resultado en otra variable e imprimir el resultado
let a = 10
let b = 5

var sum = a + b

print("\(a) + \(b) = \(sum)")



// Calcular el número de segundos en un año almacenando dicho valor en una variable
let daysInAYear = 365
let hoursInADay = 24
let minutesInAHour = 60
let secondsInAMinute = 60

var secondsInAYear = (hoursInADay*daysInAYear)*minutesInAHour*secondsInAMinute
print("El año tiene \(secondsInAYear) seg")



//Partiendo de la anchura y la altura de una pantalla en píxeles, calcular el número total de píxeles de dicha pantalla guardando el resultado en otra variable

let medida1 = 720
let medida2 = 1080

var pixeles = medida1*medida2

print("La cantidad de pixeles en la pantalla es: \(pixeles)")




//Dadas dos variables, intercambiar sus valores

var num1 = 4
var num2 = 8
let aux = num2
num2 = num1
num1 = aux
print("El primer numero es: \(num1) y el segundo es: \(num2)")




//Dado un número, imprimir el último dígito

let number = 5596
print("La ultima cifra es: \(number%10)")




//Dada la edad de un perro, imprimir la edad equivalente en humanos, teniendo en cuenta que un año para una persona equivale a 7 años para un perro
let dogAge = 54

let humanAge = 7

print("La edad del perro (\(dogAge)) es a \(dogAge/humanAge) en humano")




//Dada una cantidad determinada de chicos y chicas, imprimir el porcentaje de cada uno respecto al total
let men = 65
let women = 80

var total = men + women

print("Los chicos son el \((men*100)/total)% y de chicas son el \((women*100)/total)%")



//Control de flujo

//Dados dos números, compararlos e imprimir el mayor de ellos
let numberOne = 89
let numberTwo = 56

if numberOne>numberTwo{
    print("El numero \(numberOne) es el mayor")
}else{
    print("El numero \(numberTwo) es el mayor")
}



//Dado un número, imprimir un mensaje indicando si es par o impar
if numberTwo%2==0{
    print("El numero es par")
}else{
    print("El numero es impar")
}



//Dados dos números, imprimir un mensaje diciendo si el primero es divisible entre el segundo o no
let number1 = 85
let number2 = 5

if number1%number2 == 0{
    print("\(number1) es divisible entre \(number2) ")
}else{
    print("No son divisibles")
}



//Dadas tres variables, comparar el valor que contienen e indicar si todas ellas son diferentes, o si por el contrario, dos variables o las tres contienen el mismo valor


var t = 25
var y = 25
var u = 25


if y == u || u==t || t==y{
    print("Al menos dos varaibles son iguales")
}else{
    print("Todas las varaibles son diferentes")
}




//Disponemos de dos variables que indican los días que hace que hemos comprado leche y huevos respectivamente. Si hace más de 2 días que compramos la leche deberemos imprimir que ya está caducada, y si hace más de 7 días que compramos los huevos, imprimiremos que están caducados. Si la leche y los huevos no estén caducados, se deberá imprimir un mensaje indicando que ambos están en buen estado

var milkDays = 3
var eggsDays = 5

if milkDays > 2 && eggsDays > 7{
    print("Ambos alimentos estan caducados")
}else if milkDays <= 2 && eggsDays <= 7{
    print("Ambos alimentos un se pueden consumir")
}else if (milkDays < 2 && eggsDays>7) {
    print("La leche esta bien, pero los huevos no")
}else if (milkDays > 2 && eggsDays<7 ){
    print("La leche esta mal y los huevos estan bien")
}




//Dado un entero que indique un año cualquiera, indicar si dicho año es bisiesto o no, teniendo en cuenta que un año es bisiesto si es divisible entre 4 y no es divisible entre 100, y también si es divisible entre 400 (2000 y 2400 sí son bisiestos. 2100, 2200 y 2300 no lo son)
let year = 2004

if year % 4 != 0 {
    print("No es bisiesto")
}else if year % 4 == 0 && year % 100 != 0{
    print("Es bisiesto")
}else if year % 4 == 0 && year % 100 == 0 && year % 400 != 0{
    print("No es bisiesto")
}else if year % 4 == 0 && year % 100 == 0 && year % 400 == 0 {
print("Es bisiesto")
}




//Generar un número aleatorio entre 1 y 3 (ambos incluidos) simulando que lanzamos una moneda, de forma que se imprima uno de los tres posibles valores (cara, cruz o canto). Se puede utilizar la función random de la siguiente forma: Int.random(in:1...3)

var randomCoin = Int.random(in: 1...3)

if randomCoin == 1{
    print("Cara")
}else if randomCoin == 2 {
    print("Cruz")
}else {
    print("Canto")
}





// Dados cuatro valores numéricos, imprimir el más pequeño

let j = 7, g = 4, c = 2, d = 15

var min = j

if g < min { min = g }

if c < min { min = c }

if d < min { min = d }

print(min)




// Imprimir si un número es divisible entre 3 y 5 al mismo tiempo
if d % 3 == 0 && d%5 == 0{
    print("Es divisible entre 3 y 5 ")
}else{
    print("No son divisibles")
}





/*
 Escribir un switch que imprima las siguientes cadenas utilizando los siguientes intervalos dependiendo de una variable que contiene una distancia:

 «Aquí» si la distancia es 0.
 «Bastante cerca» si la distancia es mayor que 0 y menor que 5.
 «Cerca» si la distancia está entre 5 y 15.
 «Más o menos cerca» si la distancia está entre 15 y 40, ambos incluidos.
 «Lejos» si la distancia es mayor que 40.
 
 */
var distance = Int.random(in: 1...50)

switch distance{
case 0:
    print("Aqui")
case 1..<5:
    print("Bastante cerca")
case 5..<15:
    print("Cerca")
case 15..<40:
    print("Más o menos cerca")
default:
    print("Lejos")
}





// Tenemos una cadena que indica la descripción de un animal. Si el animal es un «gato» debemos imprimir un mensaje indicándolo. Si es un «gato muy grande», debemos decir que el animal tal vez sea un tigre, y en caso contrario indicaremos que es otro tipo de animal

let description:String = "gato muy grande"

if description == "gato"{
    print("Es un minino")
}else if description == "gato muy grande"{
    print("Ese minino es un tigre")
}else{
    print("Ese no es un minino")
}





// Utilizando un switch imprimir la cadena «Eres un superhéroe» si tu nombre es «Clark Kent» o «Bruce Wayne», y «Eres una persona normal» en caso contrario
let name : String = "Bruce Wayne"

switch name {
case "Clark Kent":
    print("Eres un superhéroe")
case "Bruce Wayne":
    print("Eres un superhéroe")
default:
    print("Eres un civil normal")
}





//Arrays

//Crear de dos formas diferentes un array que contenga los siguientes enteros 5, 8, 10, 16, 23, 40
var numbers = [5,8,10,16,23,40]
var numbersV2 : [Int] = [5,8,10,16,23,40]
print(numbers)
print(numbersV2)




//Crear de dos formas diferentes un array que no pueda ser modificado y que contenga los siguientes enteros: 5, 8, 10, 16, 23, 40
let numbersV3 = [5,8,10,16,23,40]
let numbersV4 : [Int] = [5,8,10,16,23,40]
print(numbersV3)
print(numbersV4)




//Añade de dos formas diferentes los valores 118, 137, y 5615 al final del siguiente array: [5, 8, 10, 16, 23, 40]
var arrayExample = [5,8,10,16,23,40]
let newArray = [118,137,5615]

//arrayExample.append(contentsOf: [118,137,5615])
//print (arrayExample)

arrayExample.append(contentsOf: newArray)
print(arrayExample)




//Reemplazar el valor 16 con el valor 45 en el siguiente array: [5, 8, 10, 16, 23, 40]

var otherArray : [Int] = [5, 8, 10, 16, 23, 40]
print(otherArray)
otherArray[3] = 45
print(otherArray)



//Reemplaza los valores 8, 10, y 16 con los valores 1, 2, 3, 4, 5 y 6 en el siguiente array: [5, 8, 10, 16, 23, 40]
let newArrayV2 = [1,2,3,4,5,6]
otherArray.replaceSubrange(1...3, with: newArrayV2)
print(otherArray)




//Enumeraciones y tuplas

//Definir un array de tuplas que tengan 2 campos cada una, para guardar el nombre y primer apellido de 5 personas:
var people = [("John", "Smith"),("Clark", "Kent"),("Bruce","Wayne"),("Tony", "Stark"),("Steve","Rogers")]



//Partiendo de dos valores cualesquiera, formar una tupla indicando cuál de esos dos valores es el menor y cuál el mayor

var someNum : Int = Int.random(in: 1...20)
var otherNum : Int = Int.random(in: 1...20)

let resultado = someNum < otherNum ? (menor:someNum, mayor:otherNum) : (menor:someNum, mayor:otherNum)
print(resultado)



//Definir una enumeración para tener un listado de varios tipos de dispositivos de Apple

enum appleDevices {
    case iPhoneX
    case iPhoneXS
    case iPhone11
    case iPhone12
    case iPhone13
}

let myDevice = appleDevices.iPhoneXS
print(myDevice)



//Disponemos de un array que indica los movimientos del personaje de un videojuego, y también conocemos su posición original. Un paso .arriba incrementará la coordenada y en 1. Un paso .abajo decrementará la coordenada y en 1. Un paso a la  .derecha incrementará la coordenada x en 1. Un paso a la .izquierda decrementará la coordenada x en 1. Se debe imprimir la ubicación final del personaje después de realizar los movimientos indicados

var startPoint = (x:5,y:6)

enum movements {
    case arriba, abajo, izquierda, derecha
}

let steps : [movements] = [.abajo,.arriba,.izquierda,.derecha]
for step in steps{
    switch step{
    case .abajo:
        startPoint.y-=1
    case .arriba:
        startPoint.y+=1
    case .izquierda:
        startPoint.x-=1
    case .derecha:
        startPoint.x+=1
    }
}

print(startPoint)




//Escribir el código necesario para jugar a piedra, papel, tijeras, utilizando una enumeración con los tres posibles casos:  .piedra, .papel, .tijeras
enum game{
    case stone, paper, scissors
}

var player1 = game.stone

var player2 = game.paper

if player1 == player2 {
        print("Empate")
}else if player1 == .paper && player2 == .stone || player1 == .stone && player2 == .scissors || player1 == .scissors && player2 == .paper {
    print("Player 1 gana")
}else{
    print("Player 2 gana")
}



// Utilizando una enumeración de tipos de monedas y un array de tuplas que especifique el número de monedas que tenemos de cada tipo, calcular e imprimir el cantidad total de dinero

enum TipoMoneda {
    case cents5, cents10, cents20, cents50, euro1, euro2
}

let monedas:[(cantidad:Int,tipo:TipoMoneda)] = [(2,.cents10), (5,.euro1), (3,.euro2)]

var fTotal = 0

for (cantidad, tipo) in monedas {
    switch tipo {
        case .cents5:
            print("\(cantidad) monedas de 5 céntimos")
            fTotal += cantidad * 5
        case .cents10:
            print("\(cantidad) monedas de 10 céntimos")
            fTotal += cantidad * 10
        case .cents20:
            print("\(cantidad) monedas de 20 céntimos")
            fTotal += cantidad * 20
        case .cents50:
            print("\(cantidad) monedas de 50 céntimos")
            fTotal += cantidad * 50
        case .euro1:
            print("\(cantidad) monedas de 1 euro")
            fTotal += cantidad * 100
        case .euro2:
            print("\(cantidad) monedas de 2 euros")
            fTotal += cantidad * 200
    }
}

print("Total: \(Double(fTotal)/100.0) euros")





//Funciones y operadores aritméticos

//Sumar dos números y devolver el resultado

func suma(a:Double,b:Double)->Double{
    return a+b
}
suma(a: 5.6, b: 7.8)



//Calcular el número de segundos que suman en total un número determinado de años
func yearInSeconds (years:Int)->Int{
    let secondsHour = 3600
    let secondsDay = secondsHour*24
    let secondsYear = secondsDay*365
    return secondsYear*years
}

yearInSeconds(years: 1)



//Calcular la cantidad total de píxeles que tiene una pantalla dada su altura y anchura en píxeles
func displayPixels (height: Int, width: Int)->Int{
    return height*width
}
displayPixels(height: 720, width: 1080)



//Intercambiar el valor de dos variables
func switchVariables (a:inout Int, b:inout Int)->(a:Int, b:Int){
    let comodin = a
    a=b
    b=comodin
    return (a,b)
}
var numberA=15
var numberB=25
switchVariables(a: &numberA, b: &numberB)




//Dado un número, imprimir el último dígito
func lastDigit (num: Int)->Int{
    return num%10
}
lastDigit(num: 169)




//Dada la edad de un perro, calcular la edad equivalente en humanos, teniendo en cuenta que un año para una persona equivale a 7 años para un perro

func dogYears (years:Int)->Int{
    return years * 7
}
dogYears(years: 3)



//Funciones y control de flujo

//Dado un número, comprobar si es par o no
func parImpar (number:Int)->String{
    if number%2==0{
        return "Es par"
    }else{
        return "Es impar"
    }
}

parImpar(number: 158)




//Dados dos números, comprobar si el primero es divisible entre el segundo

func divisor (number1:Int, number2:Int)->String{
    if number1%number2 == 0{
        return "El numero \(number1) es divisible entre \(number2)"
    }else{
        return "El numero \(number1) NO es divisible entre \(number2)"
    }
}

divisor(number1: 15, number2: 5)




//Funciones y tuplas

//Dada una cantidad determinada de chicos y chicas, calcular el porcentaje de cada uno respecto al total

func guysPercent (boys:Int, girls:Int)->String{
    let people = boys + girls
    let guys = (boys*100)/people
    let gir = (girls*100)/people
    return "El porcentaje de niños es: \(guys) y el de niñas es: \(gir)"
}

guysPercent(boys: 15, girls: 5)




//Disponemos de dos tuplas de tipo (Int,Int) que representan dos fracciones. El primer valor en cada tupla representa el numerador y el segundo valor representa el denominador. Utilizando una función, crear una nueva tupla también de tipo (Int,Int) que contenga el resultado de sumar las dos fracciones

let fraccion1 = (5,10)
let fraccion2 = (2,3)

func sumaFracciones (tuple1:(num1:Int, dem1:Int), tuple2:(num2:Int, dem2:Int))->(Int,Int){
    let upper = (tuple1.num1*tuple2.dem2)+(tuple1.dem1*tuple2.num2)
    let low = tuple1.dem1 * tuple2.dem2
    return (upper,low)
}

sumaFracciones(tuple1: fraccion1, tuple2: fraccion2)




//Escribir el código necesario para jugar a piedra, papel, tijeras, cumpliendo las siguientes especificaciones:
/*
Se debe definir una enumeración con tres posibles casos:  .piedra, .papel, .tijeras.
Se debe definir una segunda enumeración con tres posibles casos:  .gana, .empata, .pierde.
Escribir una función que reciba la elección de cada jugador y devuelva el resultado correspondiente al primer jugador.
*/

enum gameOptions {
    case piedra, papel, tijeras
}

enum resultados {
    case gana, empatan, pierde
}

func inGame (entryOne:gameOptions,entryTwo:gameOptions) -> resultados{
    if entryOne == entryTwo{
        return .empatan
    }else if (entryOne == .papel && entryTwo == .piedra) || (entryOne == .tijeras && entryTwo == .papel) || (entryOne == .piedra && entryTwo == .tijeras) || (entryOne == .piedra && entryTwo == .papel) || (entryOne == .tijeras && entryTwo == .piedra) || (entryOne == .piedra && entryTwo == .papel) {
        return .gana
    }
    return .pierde
}


inGame(entryOne: .tijeras, entryTwo: .tijeras)
