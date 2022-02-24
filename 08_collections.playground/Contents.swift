import UIKit

//Array
//Conjuntos (set)
//Diccionarios


//ARRAY
//asi se declara una variable que va a contener un array con el tipo de dato que tendra el array
var someInts = [Int]()
someInts.count //cuenta cuantos elementos hay dentro del array
someInts.append(31) //para agregar un dato al array
someInts.count
someInts = [] //aqui quita los elementos que tenia mi array
someInts.count

//aqui le decimos que haga un array que repitira el dato 3,141592 tres veces
var someDoubles = Array(repeating: 3.141592, count: 3)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)

//para concatener los arrays
var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

//crear un array de strings
var shoppingList : [String] = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count

//si el array shoppingList esta vacio entonces
if shoppingList.isEmpty {
    print("La lista de la compra está vacía")
} else{ //si no esta vacia entonces
    print("Mandemos a Ricardo a comprar")
}

//para agregar un elemento al final del array
shoppingList.append("Coca Cola")
shoppingList.count

//otra manera de concatenar dos arrays
shoppingList += ["Totopos", "Guacamole", "Pico de Gallo"]
shoppingList.count

//utilizamos los indices para el array
var firstElement = shoppingList[0]
shoppingList[0] = "Huevos" //cambiar el indice cero del array con este nuevo valor
shoppingList
shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Plátano", "Mango"] //cambiar los elementos del indice 4 al 6 por estos nuevos valores
shoppingList

//aqui estamos removiendo el elemento en el indice 1
let pepper = shoppingList.remove(at: 1)
shoppingList

//aqui estamos removiendo el ultimo elemento
let _ = shoppingList.removeLast()
shoppingList

//Recorrer un array
for item in shoppingList{
    print(item)
}

//aqui queremos traer dos elementos del array los cuales son el indice y su elemento (item)
//para que por medio del for podamos regresar dos elementos hay que poner el array enumerated
for (idx, item) in shoppingList.enumerated(){
    print("Item \(idx+1): \(item) ")
}




//Conjunto (Set) Un set es similar aun array, pero en este caso no llevan un orden
//asi declaramos un set y el tipo de dato dentro de este set
var letters = Set<Character>()
letters.count //para contar cuantos elementos hay dentro del set
letters.insert("a") //agregar un elemento al set
letters.insert("h")
letters.insert("b")
letters

//delcarando e inicializando el set de tipo string
var favouriteGames : Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
favouriteGames.count


if favouriteGames.isEmpty{
    print("No hay juegos favoritos")
}

favouriteGames.insert("Metal Gear")

//cuando removemos un elementos del set e imprimir un mensaje
if let removedGame = favouriteGames.remove("Farcry"){
    print("He eliminado de la lista \(removedGame)")
}

if favouriteGames.contains("Metal Gear"){
    print("Me encanta ese juego")
}

for vg in favouriteGames.sorted() { //sorted sirve para ordenar alfabeticamente (en este caso)
    print(vg)
}

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

//A union B = elementos que son o bien de A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted()
//A intersección B = elementos que son a la vez de A y de B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B = elementos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()

// A + B = (A-B) union (B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()


let houseAnimals:Set = ["🐶", "😹"]
let farmAnimals:Set = ["🐮", "🐔", "🐑", "🐶", "😹"]
let cityAnimals:Set = ["🐁", "🕊"]

houseAnimals.isSubset(of: farmAnimals) //es un subconjunto de
farmAnimals.isSuperset(of: houseAnimals) //es superconjunto de
//A y B son disjuntos si su intersección es vacía
farmAnimals.isDisjoint(with: cityAnimals) //true por que no tienene ninguno en comun



// Diccionarios [k1:v1, k2:v2, ....]  [llave:valor]

//declarando el diccionario con el tipo de dato en la llave y el tipo de dato en el valor
var namesOfIntegers = [Int : String]()
namesOfIntegers[15] = "quince"
namesOfIntegers = [:] //para vaciar el diccionario

var airports: [String: String] = ["YYZ": "Toronto",
                                  "DUB": "Dublin",
                                  "PMI": "Palma de Mallorca"]

airports.count //contar los elementos dentro del diccionario

airports.isEmpty
airports["LHR"] = "London City Airport" //una manera de agregar valores al diccionario
airports
airports["LHR"] = "London Heathrow" //modificar uno de los valores
airports


if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aeropuerto tenia antiguamente el nombre de \(oldValue)")
}
airports

if let airportName = airports["DUB"]{
    print("El aeropuerto de DUB es: \(airportName)")
}

airports["PMI"] = nil
airports

if let removedAirport = airports.removeValue(forKey: "DUB"){
    //usar la variable removed airport
}
airports

for (key, value) in airports {
    print("\(key) - \(value)")
}

for airportKey in airports.keys{
    print(airportKey)
}

for airportName in airports.values{
    print(airportName)
}

let airportKeys = [String](airports.keys.sorted())
let airportNames = [String](airports.values.sorted())
