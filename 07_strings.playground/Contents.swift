import UIKit

let someString = "Soy un string cualquiera"

let multiLineString = """
 Soy Juan Gabriel Gomila\
 Estamos haciendo el curso de Swift\
 Un saludo, paz y amor...
"""

print(multiLineString)


//Para poder usar comillas en un string
let wiseWords = "\"La imaginación es más importante que el saber\" - Albert Einstein"

//representacion de caracteres en numeros
let dolarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"


var emptyString = ""
var anotherEmptyString = String()


//.isEmpty sirve para saber si esta vacio
if emptyString.isEmpty {
    print("Nada que ver aquí")
} else{
    print("El string tiene un valor")
}

//concatenacion con operadores
var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"


let aString = "Juan Gabriel"
//aString += " y Ricardo Celis"


var a = "A"
var b = "B"
print("a vale \(a) y b vale \(b) ")
b = a
print("a vale \(a) y b vale \(b) ")
b = "C"
print("a vale \(a) y b vale \(b) ")
a = "D"
print("a vale \(a) y b vale \(b) ")


let name = "Juan Gabriel 😎"
//imprimir cada caracter de un string con un for
for ch in name {
    print(ch)
}
print(name.count) //me cuenta cuantos caracteres tiene el string name

let exclamationMark : Character = "!"

//creamos un array de caracteres
let nameChars: [Character] = ["J", "u", "a", "n"]
var nameString = String(nameChars) //aqui convertimos el array en un string

let compoundName = "Juan " + "Gabriel"

nameString.append(exclamationMark) //con append agregamos al final del string lo que le indiquemos dentro del ()

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
message.append(exclamationMark)


let greeting = "Hola, ¿que tal?"
greeting[greeting.startIndex]
//greeting[greeting.endIndex] no podemos acceder al final del string por que con esto nos entregaria mas alla del final

//aqui le decimos que el indice "antes" del final
greeting[greeting.index(before: greeting.endIndex)]
//aqui le decimos que el indice "despues" del que inicia
greeting[greeting.index(after: greeting.startIndex)]


for idx in greeting.indices{ //recorrera todo el string caracter por caracter
    print("\(greeting[idx])", terminator:"")//imprime cada caracter y como terminador (alfinal de cada caracter) no hara nada
    //por default un print tiene como terminador \n
}


var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal",
               at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))


welcome
//hacemos un rango con welcome y lo siguiente se lee asi:
//rango que que empiece al final del string de welcom menos 7 posiciones hasta uno antes del  final del string de welcome
let range = welcome.index(welcome.endIndex, offsetBy: -7)..<welcome.endIndex
welcome.removeSubrange(range)
welcome


greeting
//aqui le estoy diciendo que establesca dentro de esta constante que el primer indice sera la ","
//con el nil coalasing vamos a decir:
//si el primer indice es "," entonces hazle un force unwrapping y si no establece como indice el ultimo indice
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]//aqui le decimos que haga un rango hasta antes del index que definimos arriba


let newString = String(firstPart)

let newGreeting = "Hola, soy Juan Gabriel"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("l")

//creamos un Array
let collection = [
    "Act 1 Scene 1","Act 1 Scene 2","Act 1 Scene 3","Act 1 Scene 4","Act 1 Scene 5",
    "Act 2 Scene 1","Act 2 Scene 2","Act 2 Scene 3",
    "Act 3 Scene 1","Act 3 Scene 2"
]

var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}

print("El número de escenas del acto 1 es: \(act1SceneCount)")



let ghost = "¡¡Fantasma!! 👻"

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}
