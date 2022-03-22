import UIKit

//METODOS DE INSTANCIA

class Counter {
    var count = 0
    
    //Metodos
    // self se utiliza cuando queremos indicar que la variable que utilizamos es la que esta dentro de nuestras propiedades (la que esta dentro de la clase o estructura) y no la que se encuentre dentro de los metodos (funciones)
    func increment(){
        self.count += 1
    }
    
    func increment(by amount:Int) {
        self.count += amount
    }
    
    func reset(){
        self.count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment(by: 8)
counter.reset()


struct Point{
    var x = 0.0, y = 0.0
    //si un punto esta a la derecha de un valor dado:
    func isToTheRight(of x:Double) -> Bool {
        //regresame true or false si la varible x que esta declarada en la estructura es mayor a la variable que pase por el metodo
        return self.x > x
    }
    
    //Importante mencionar que las variables de una estructura son inmutables, aunquer tenga especificado que son varaibles (como arriba), no se pueden modificar
    //Para poder modificar los valores de la estructura deberemos de utilizar la palabra reservada mutating,
    //si una funcion es mutable indica que esa funcion tiene el derecho a acceder a las propias variables de la estructura o del enumerado y modificarlas si lo desea
    mutating func moveBy(x deltaX:Double, y deltaY: Double) {
        //self.x += deltaX
        //self.y += deltaY
        self = Point(x: self.x + deltaX, y: self.y + deltaY)
    }
}

var somePoint = Point(x: 4, y: 5)
somePoint.isToTheRight(of: 1)
somePoint.isToTheRight(of: 54)

somePoint.moveBy(x: 2, y: -3)
somePoint.x = 9


enum DifferentStateSwitch{
    case off, low, high
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var controllerStatus = DifferentStateSwitch.off
controllerStatus.next()
controllerStatus.next()
controllerStatus.next()


//METODOS DE CLASE
// Un metodo sera de clase cuando en lugar de invocarlo una instancia o en lugar de invocarlo un objeto es capaza de invocarlo la propia clase
class SomeClass{
    class func someMethod(){
        print("HOLA")
    }
}

SomeClass.someMethod() //aqui estamos invocando a dicho metodo sin la necesidad de realizar una instancia


struct LevelTracker{
    static var highestUnlockedLevel = 1 //esta varaible es estatica por que sera compartida por todos los jugadores o todos los players que el jugador quiera crear
    var currentLevel = 1
    
    //el metodo es static por que no lo hace solo para un personaje, lo hace para todos los personajes
    static func unlock(_ level:Int){
        if level > highestUnlockedLevel{
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool{
        return level <= highestUnlockedLevel
    }
    
    //Funcion que me va a modificar mi variable currentLevel
    mutating func advance(to level:Int) -> Bool {
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            return true
        }else{
            return false
        }
    }
    
}


class Player{
    var tracker = LevelTracker()
    let playerName:String
    func complete(level: Int){
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    //Inicializador para establecer el nombre del player
    init(name: String) {
        self.playerName = name
    }
}


var player = Player(name: "Juan Gabriel")
player.complete(level: 1)
player

//player.complete(level: 7)

if player.tracker.advance(to: 7){
    print("Podemos avanzar hasta el nivel 7")
} else {
    print("El nivel 7 sigue bloqueado por ahora")
}
