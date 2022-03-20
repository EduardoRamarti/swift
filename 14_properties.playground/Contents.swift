import UIKit
/*
    STORED PROPERTIES
    
    son constantes o variables que se almacenan com parte de una instancia de una clase o estructura en particular.
    Las propiedades almacenadas pueden ser propiedades almacenadas variables (introducidas por la palabra clave var) o propiedades almacenadas constantes (introducidas por la palabra clave let)
    
 */


//Creamos la estructura
struct FixedLengthRange {
    var firstValue : Int
    let length : Int
}

//instanciamos la estructura anterior y la inicializamos con el inicializador por defecto
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6 //modificamos el valor del firstValue

//Este objeto lo cremos como constantes entonces no se podra modificar de los valores que le asignamos al momento de inicializarlo
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 5 ESTO DA ERROR...



/*
    LAZY STORED PROPERTIES
    
    Es una propiedad cuyo valor inicial no sera calculado hasta la primera vez que sea usada.
 
    ¿Cuando usar una lazy stored property? Cuando la inicializacion de un valor para una propiedad es dependiente de factores externos de los cuales sus valores no son conocidos hasta despues de que la inicializacion de una instancia sea completa
    Cuando el valor inicial de una propiedad requiere una configuracion compleja o computacionalmente costosa que no debe realizarse a menos que sea necesaria o haysa que sea necesaria.
 
 */

//Esta clase seria muy pesada ya que se encarga de realizar la importacion de datos desde ficheros externos y por lo cual utilizaria mucha memoria
class DataImporter{
    var filename = "data.txt"
}

//el manejador de los datos va a decidir cuando se importaran los datos, entonces aqui es donde podemos utilizar lazy por que no queremos que se importe nada hasta que lo indiquemos
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]() //aqui guardaria todos los datos importados y este no es necesario hacerlo lazy por que este array ya es un array vacio (no ocupa memoria)
}

//instanciamos la clase
let manager = DataManager()
manager.data.append("Algo de datos")
manager.data.append("Muchos más datos")
manager
//Hasta esta línea, el importer no ha sido creado...

manager.importer.filename //hasta que yo no le pedi que me dijera desde donde (el nombre) esta importando todos los datos,entonces la variable (instanciada de DataImporter) con el nombre importer se crea
//Aquí, la variable importer ya ha sido creada
manager



/*
    COMPUTED PROPERTIES
    
    Son variables calculadas por un algoritmo, NO se accede directamente a el valor de estas variables, NO modificamos directamente lo que contienen, si no son calculadas automaticamente: exite un getter y un setter que me permiten manejar los datos internos de esa variable.
 
 */


struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    //Propiedades
    var origin = Point()
    var size = Size()
    
    //computed property, ya que se obtendra su valor por medio de un calculo
    var center: Point{ //variable de tipo Point
        get{ //Obtener el centro
            
            //Aqui decimos que vamos a regresar un punto, es decir, en x nos regresara un valor que se calcula partiendo del punto de origen + (el ancho / 2) y lo mismo sera en y
            Point(x: origin.x + size.width/2, y: origin.y + size.height/2)
        }
        set{ //Modificar el centro
            //Cuando vamos a establecer un punto distinto, le decimos que el origen de x sera un nuevo valor ingresado menos el ancho/2 y lo mismo sera en y
            origin.x = newValue.x - size.width/2
            origin.y = newValue.y - size.height/2
        }
    }
}

//El objeto cuadrado, que es una instancia de la struct Rect, iniciandola con el punto de origen en x 0,y 0 y de tamaño ancho 10 y altura 10
var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center //aqui OBTENEMOS el centro con coordenadas de x,y

let initialSquareCenter = square.center //creamos una constante donde vamos a inicializarla con el punto que obtenemos del centro del cuadrado
square.center = Point(x: 18, y: 3)// MODIFICAMOS el centro, diciendole donde queremos que sea el centro ahora, con lo cual nos cambiara el punto de origen


/*
    COMPUTED PROPERTIES: de solo lectura
    Aquellas que no tienen setter y solamente tiene un getter, es decir, si solo puedo obtener su valor y no lo puedo modificar
 */


struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{ //aqui establecemos el getter, sin embargo aqui swift nos permite no colocar la palabra reservada getter  
        return width * height * depth
    }
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.volume
//cuboid.volume = 57.0 error, puesto que la variable es de solo lectura

//Ejercicio mini
enum Idioms{
    case spanish, english, france
}

enum Genere{
    case male, female
}

struct Greeting {
    var genere: Genere
    var idiom : Idioms
    var name : String
    var theGreeting: String{
            switch idiom{
            case .spanish:
                return "¡Hola!, "
            case .english:
                return "Hello!, "
            case .france:
                return "Salut!, "
            }
        }
    var formalization : String{
        switch genere{
        case .female:
            return theGreeting+"Mrs.\(name)"
        case .male:
            return theGreeting+"Mr.\(name)"
        }
    
    }
}

let helloJames = Greeting(genere: .male, idiom: .english, name: "James")
helloJames.formalization




/*
    PROPERTY OBSERVERS
    Una propiedad es observada si cuando ocurre algun cambio al interior de la misma, necesitamos reaccionar de algun modo.
    Por ejemplo: en un videojuego una de las propiedades de mi personaje sea la vida, un observador estaria observando en todo el rato que esa vida no baje de cero por que si es menor a cero tienes que hacer un gameover
 */

// willSet : Indica presencia de futuro; se va a llamar o configurar justo antes de configurar el valor de una property
// didSet : Indica presencia de pasado; se va a ejecutar despues de cambiar el valor de dicha property

class StepCounter{
    var totalSteps: Int = 0{
        willSet(newTotalSteps){ //se ejecutara automaticamente ANTES cuando el valor de la variable de totalSteps
            print("El número de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet{// se ejecuta despues de cambiar el valo
            if totalSteps > oldValue{
                print("El número de pasos ha incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200

stepCounter.totalSteps = 520

stepCounter.totalSteps += 1234


struct PlayerLife{
    var lifePercent : Int{
        willSet{

        }
        didSet{
            
        }
    }
}




struct SomeStruct {
    var counter = 0
    static var storedTypeProperty = "SOME VALUE"
    static var computedTypeProperty: Int {
        return 1
    }
}

var instanceStr = SomeStruct()

var otherInstanceStr = SomeStruct()

SomeStruct.computedTypeProperty

enum SomeEnum{
    static var storedTypeProperty = "SomeValue"
    static var computedTypeProperty: Int{
        return 5
    }
}

SomeEnum.storedTypeProperty

class SomeClass{
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty:Int{
        return -9
    }
    
    class var overrideableComputedTypeProperty:Int{
        return 108
    }
}
