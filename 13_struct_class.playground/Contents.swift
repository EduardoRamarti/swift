import UIKit


//Struct vs Class
//Ambas permiten alamacenar propiedades, definir metodos, permiten definir subindices, definir incializadores (constructores), pueden ser extendidas con funcionalidades de implementacion a futuro
//Struct = Son Value types (tipos por valor), se copian cuando se asigna a una nueva variable o pasa como parametro a una funcion
//Class = Son Reference types (tipos por valor), estos se comparten



struct SomeStruct {
    //La definición de la estructura aquí
}
class SomeClass {
    //La definición de la clase aquí
}



struct Resolution {
//Propiedades
    var width = 0
    var height = 0
}

class VideoMode {
    //Propiedades
    //asociamos una estructura a una clase: por medio de la intancia de la estructura que definimos antes
    var resolution = Resolution() //resolution de tipo resolution
    var interlaced = false //si esta linkeado a otro video
    var frameRate = 0.0 //frames por segundo
    var name: String? //PUEDEN tener nombre
}

//Hacemos la intanciacion de la estructura Resolution
let someResolution = Resolution()
//Hacemos la instanciacion de la clase VideoMode
let someVideoMode = VideoMode()


//Una struct una vez creada simplemente ocupa un espacio en la memoria y cuando la decalro como constante tiene que permaneceer inmutable
//Una class lo que tengo es la zona de la memoria que ocupa. es decir las varaibles en ese trozo de la memoria podran ir cambiando si se declararon como variables dentro de la propia clase


print(someResolution.width)

//Aqui modificamos el width(ancho)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

//Aqui modificamos el frameRate
someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)



//hacemos la instancia a un objeto llamado vga
let vga = Resolution(width: 640, height: 480) //este es el inicializador por defecto
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")
print("\(hd.width) x \(hd.height)")


enum CompassPoint{
    case north, south, east, west
}

var currentDirection = CompassPoint.north
var oldDirection = currentDirection
currentDirection = .south

print(currentDirection)
print(oldDirection)


//instanciamos la classe VideoMode
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

//aqui hacemos una copia del objeto tenEighty
let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0 //cuando cambiamos el valor de la copia, tambien cambia el valor del objeto original (cuando son clases)
tenEighty

//El operador === indica identidad (identico), es decir si dos intancias de una clase apuntan a la misma memoria.
if tenEighty === alsoTenEighty{ //!==
    print("Son el mismo objeto")
}else{
    print("Son diferentes")
}

