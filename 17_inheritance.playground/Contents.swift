import UIKit

//HERENCIA La herencia puede ser entendida como una clase obtenemos los métodos y propiedades de otra clase.



class Vehicle {
    
    var currentSpeed = 0.0
    var description: String{
        return "Viajando a \(currentSpeed) km/h"
    }
    func makeNoise(){
        //do nothing, porque cada vehículo tiene su propia forma de hacer ruido
        print("El ruido depende del vehículo")
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)


class Bicycle : Vehicle { //la herencia se especifica como si fuera un tipo de dato
    //heredando las propiedades y metodos de la clase padre, podemos añadir las propias
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print(bicycle.description)


//Tandem es un tipo de bicicleta en la cual se podra realizar la herencia desde bicyble

class Tandem : Bicycle{
    //de igual manera podemos agregar nuevas propiedades a la clase
    var currentNumberOfPassengers = 0
    
    override func makeNoise() {
        print("Cliiin Cliiin")
    }
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print(tandem.description)



//SOBRE ESCRITURA DE VARIABLES Y METODOS
// Para realizar la sobre escritura dentro de la clase tenemos que utilizar la palabra override, la cual nos servira para realizar la sobre escritura en funciones (metodos), propiedades, getter y setter
class Train: Vehicle{
    
    //final se utiliza para evitar que sea sobreescrito por alguna de las clases hijas, ya sea una propiedad o un metodo
    final var numberOfWagons = 0
    
    override func makeNoise() { //como nosotros en la clase vehicle tenemos este metodo creado, aqui lo sobre escribirmos para poder modificar el sonido que hace este tipo de vehiculo en especifico
       print("Chooo Chooo")
    }
}

let train = Train()
train.makeNoise() //aqui aunque en la clase padre se haya establecido un metodo makeNoise, como lo sobre escribimos para la clase Train, ahora ya solo se traera el valor de lo sobreescrito


//lo mismo sucede aqui, pues como hemos sobre escrito el valor directo de la clase padre vehicle en la clase bicycle haicendo el override, dentro de la clase Tandem solo tomara el metodo sobre escrito de la clase que le precede, en este caso seria la clase bicycle
tandem.makeNoise()



class Car: Vehicle{
    var gear = 1
    //aqui estamos haciendo la sobreescritura de una variable de la clase padre
    override var description: String{
        //le decimos que regrese la descripcion de la clase padre concatenada con un string
        //super hace referencia a la superclase (clase padre)
        return super.description + " en la marcha \(gear)"
    }
}

let car = Car()
car.currentSpeed = 55
car.gear = 3
//aqui podemos observar como hace el cambio en una clase y la otra no
print(car.description)
print(tandem.description)


// Creamos la clase AutomaticCar que hereda de la clase Car
class AutomaticCar : Car{
    //Hacemos la sobre escritura de la varialbe currentSpeed, ya que se le asiganara un observer
    override var currentSpeed: Double{
        didSet{ //despues de que se haya modificado la variable
            //la velocidad es igual al casting de currentSpeed dividido entre 15 sumando 1
            //el casting se tiene que hacer para eliminar los decimales
            gear = Int(currentSpeed / 15.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 65
print(automatic.description)

class Railway : Train{
    //override var numberOfWagons
    //lo anterior es un error ya que al tener esa varaible final en la clase padre, no se puede modificar
    
}

