import UIKit

let b = 10
var a = 5
a = b

let (x,y) = (1,2)

//let 2 = z

if a == b {
  print("Los valores de a y b son iguales")
}



//Operaciones aritmeticas simples
1+2
5-3
2*3
10.0/2.5


//Concatenacion 1
"Hello " + "World"


//D/d -> D == d*c+r
9/4 //c
9%4 //r

9 == 4*2+1


-9%4 // -9 == -2*4 + (-1)

let five = 5
let minusFive = -five
let plusFive = -minusFive

let minusSix = -6
let alsoMinusSix = +minusSix

var number = 5
number += 3 //number = number + 3
number -= 2 //number = number - 2

//resultados boleanos
1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Ricardo Celis"

if name == "Juan Gabriel" {
    print("Bienvenido \(name), eres invitado a la fiesta")
}else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}


//1 es menor que 2 = es true
(1, "Juan Gabriel") < (2, "Ricardo Celis")

//3 y 3 son iguales pero la j de juan va antes que la R de ricardo (en el alfabeto) por tanto es true
(3, "Juan Gabriel") < (3, "Ricardo Celis")

//en este caso es falso, por que R no va antes que la J (en el alfabeto) por eso daria false
(3, "Ricardo") < (3, "Juan Gabriel")

//daria true por que ambos son iguales tanto el numero como la palabra
(4, "perro") == (4, "perro")

("perro", false) == ("perro", true)


/*
 if question {
    answer1
 } else{
    answer2
 }
 */


//OPERADOR TERNARIO

let contentHeight = 40
var hasImage = true
var rowHeight = 0

//rowHeight es igual al contentHeight más la evaluacion del operador ternario
rowHeight = contentHeight + (hasImage ? 50 : 10)
//el operador ternario se lee: si hasImage es true usa 50 y si es falso usa 10


//OPERADOR NIL COALESCING
let defaultAge = 18
var userAge: Int? //le decimos que es un optional

userAge = 31

var ageToBeUsed = userAge ?? defaultAge
// ageToBeUsed = (userAge != nil ? userAge! : defaultAge)
//se lee: si userAge es diferente de nil, entonces haz un force unwrapping a userAge... si no es nulo usa defaultAge

let defaultColorName = "red"
var userColorName: String? = "green"

var colorNameToUse = userColorName ?? defaultColorName
//userColorName != nil ? userColorName! : defaultColorName



//CICLOS Y RANGOS

//para idx in un rango de 1 a 5 imprime idx
for idx in 1...5 {
    print(idx)
}

//para idx en un rango de 1 hasta 5-1 (es decir, imprime en un rango de 1 hasta 4)
for idx in 1..<5{
    print(idx)
}


let names = ["Ricardo", "Juan Gabriel", "Pedro"] //3 nombres en total
for i in 0..<names.count{ //rango es de 0 hasta 2 (valores dentro de la lista)
    print("La persona \(i+1) se llama \(names[i])")
}

//aqui le decimos que para el nombre dentro de la lista nombres con el rango desde la posicion 1 hasta el ultimo
//lo que representa 1... es: empieza en 1 y termina hasta el ultimo disponible
for name in names[1...]{
    print(name)
}

//aqui como en el anterior el rango se especifica en ..<2
//esto significa, empieza en el numero minimo y termina en 1
for name in names[..<2]{
    print(name)
}


let range = ...5 // -infinity...5
range.contains(7)
range.contains(4)
range.contains(-2)
range.contains(-25)
range.contains(-1000)



let allowEntry = false

if !allowEntry{
    print("ACCESO DENEGADO")
}


let enterDoorCode = false
let passRetinaScan = true

if enterDoorCode && passRetinaScan { //AND
    print("Bienvenido a la empresa")
}else{
    print("ACCESO DENEGADO")
}

let hasMoney = false
let hasInvitation = false
if hasMoney || hasInvitation{ //OR
    print("Bienvenido a la fiesta!")
} else{
    print("No eres bienvenido aquí...")
}


if enterDoorCode && passRetinaScan ||
    hasMoney || hasInvitation{
    print("Has entrado")
} else{
    print("Acceso denegado")
}
