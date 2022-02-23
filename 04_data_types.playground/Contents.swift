 import UIKit

//Booleanos
let orangesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = true

if isAged {//Solo entramos aquí, si isAged == true
    print("Puedes entrar en la fiesta")
}else{//Solo entramos aquí, si isAged == false
    print("No puedes pasar a la fiesta")
}

var age = 12
if age >= 18{
    print("Puedes entrar en la fiesta")
}



//TUPLAS - tipo de dato que adminte varios tipos de dato dentro
let http404Error = (404, "Página no encontrada") //asi se declara e inicializa este tupo de dato
let (statusCode, statusMessage) = http404Error //asi se pueden extraer los valores dentro de la tupla en dos variables
print("El código del estado es \(statusCode)")
print("El mensaje del servidor es \(statusMessage)")


//asi es como se extrae el un valor de la tupla a una varaible (SOLO UNO, EL OTRO NO NOS INTERESA)
let (justStatusCode, _) = http404Error
print("El código del estado es \(justStatusCode)")

//otra forma de acceder  los valores de ka tupla es por medio de los .0 o .1 (que nos entregara cada valor respectivamente
print("El código del error es \(http404Error.0) y el mensaje es \(http404Error.1)")

//otra manera de poder utilizar las tuplas, es agregar un nombre a cada componente dentro de la tupla como esta acontinuacion
let http200Status = (statusCode: 200, description: "OK")
print("El código del estado es \(http200Status.statusCode) y el mensaje es \(http200Status.description)")


//OPTIONALS
let possibleAge = "31" //esto es un string
//hacemos el casting para converirlo en entero
let convertedAge = Int(possibleAge) //Int? - nos retorna un int optional, es decir, es un tipo de dato que puede ter valor o no tener ningun valor (nil)

//asi declaramos e inicializamos a un optional
var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer : String?
surveyAnswer = "42"


//aqui hacemos el unwrapping, el cual nos sirve para comprobar que una variable no es nil
if convertedAge != nil { //covertedAge es diferente de nil
    print("La edad del usuario no es nula: \(convertedAge!)") //aqui se aplica el force unwrapping con !  ya que estamos seguros que esta variable si tiene un valor dentro
} else{
    print("La edad del usuario es nula")
}


//optional Binding
// es similar al unwrapping con el if, pero se hace de una manera más elegante con el binding
//esto se lee: si el valor dentro de surveyAnswer se puede asignar al valor de una constante, entonces entra como true
//IMPORTANTE LAS CONSTANTES NO PUEDEN SER NIL
if let actualAnswer = surveyAnswer {
    //Al llegar aquí, surveyAnswer != nil
    print("El string \(surveyAnswer) tiene el valor \(actualAnswer)")
}else{
    //Al llegar aquí, surveyAnswer = nil
    print("El string \(surveyAnswer) es nil... ")
}



if let firstNumber = Int("4"),
    let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber<100{
    print("\(firstNumber) < \(secondNumber) < 100")
}


if let firstNumber = Int("4"){
    if let secondNumber = Int("42"){
        if firstNumber < secondNumber && secondNumber<100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}



let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!

let assummedString: String! = "Un string unwrapped de forma implicita a partir de un optional"
let implicitString: String = assummedString

if assummedString != nil {
    print(assummedString!)
}

if let definitiveString = assummedString {
    print(definitiveString)
}

print(assummedString)
