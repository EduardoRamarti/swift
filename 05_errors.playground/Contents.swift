import UIKit

//cuando tenemos una funcion que puede lanzarnos un error por cualquiera que sea, se debe de escribir posterior al nombre de la funcion un throws
func canThrowError() throws{
    //aquí hay codigo que puede causar un error
}


//de esta manera de gestionan los errores, es decir asi llamamos una funcion que decimos que puede contener un error

do{
    try canThrowError()
    //si llegamos aquí, no ha habido error
}catch{
    //si llegamos aquí, ha habido un error...
}


func makeASandwich() throws{
    
}

do{
    try makeASandwich()
    //Me como el sandwich
}catch{
    //tengo platos limpios... -> Lavar los platos
    //tengo ingredientes -> Ir a hace la compra
    //no tengo hambre -> esperar dentro de una hora
}


// Aserciones (debug) y Precondiciones (build)

let age = -5
//assert(age>=0, "La edad de una persona no puede ser negativa")
precondition(age>=0, "La edad de una persona no puede ser negativa")
//... aquí el código sigue

if age > 10 {
    print("Puedes subir a la montaña rusa")
}else if age >= 0{
    print("Eres demasiado pequeño para subir a la montaña rusa")
}else{
    assertionFailure("La edad de una persona no puede ser negativa")
}
