import UIKit

// Un inicializador es practicamanete un metodo que otorga valor a las variables

struct Fahrenheit {
    var temperature : Double
    init() {
        self.temperature = 32
    }
}

var f1 = Fahrenheit()



struct Celsius {
    var temperature : Double
    
    init(fromFahrenheit fahrenheit: Double){
        self.temperature = (fahrenheit - 32) / 1.8
    }
    
    init (fromKelvin kelvin:Double){
        self.temperature = kelvin - 273.15
    }
    
    init (_ celcius: Double){
        self.temperature = celcius
    }
    
}


let boilingPointOfWater = Celsius(fromFahrenheit: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)



struct Color {
    let red, green, blue : Double
    init(red: Double, green: Double, blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white:Double){
        self.red = white
        self.green = white
        self.blue = white
    }
}


let magenta = Color(red: 1, green: 0, blue: 1)
let halfGrey = Color(white: 0.5)

let bodyTemperature = Celsius(37)


class SurveyQuestion{
    var text: String
    var response: String? //Cuando le decimos que una de las variables va a contener un optional, le estamos indicando que es una varialbe que se va a inicializar o no
        //por ello no es necesario que lo iniquemos dentro de nuestro inicializador
    init(text: String){
        self.text = text
    }
    
    func ask(){
        print(text)
    }
}

let q1 = SurveyQuestion(text: "Te gustan los tacos?")
q1.ask()
q1.response = "Me encantan todos ellos"




//Inicializadores de subclases

//Inicializadores designados y por conveniencia

//Designado -> Designado de la super clase (un designado solo puede llamar a un designado de la clase superior)

//Conveniencia -> Otro init de la misma clase

//El ultimo init que se llame debe de ser designado

class Vehicle{
    var numberOfWheels = 0
    var description : String{
        return "\(numberOfWheels) ruedas"
    }
}

let vehicle = Vehicle()
vehicle.description

class Bicycle: Vehicle{
    //al momento en que llamo al inicializador para esta clase hija, lo que me dice es que debmo de sobre escribir el inicializador de la clase padre con override
    override init() {
        //Cuando vamos a hacer una sobre escritura de algun init deberemos de hacer referencia a la clase padre de la siguiente manera:
        super.init()//aqui estariamos diciendo que el init se va a correr sobre la clase padre
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
bicycle.description


//inicializador por convenciencia
class Hoverboard: Vehicle{
    var color: String
    //al hacer un init dentro de una clase que hereda de otra, inicializando SOLO alguna varaible nueva dentro de esta clase, estamos haciendo un inicializador por conveniencia
    init(color: String){//aqui podemos ver que este inicializador solo afecta a color, la cual se encuentr adentro de esta clase
        self.color = color
        //aqui se llama SIEMPRE IMPLICITAMENTE a super.init()
    }
    override var description: String{
        return "\(super.description) en el color \(self.color)"
    }
}


let hoverboard = Hoverboard(color: "silver")
hoverboard.description



//Failable Initializer

enum TemperatureUnit{
    case kelvin, celsius, fahrenheit
    
    //L indicamos que a la hora de inicializarlo pueda que tenga valor o no
    init?(symbol: Character){
        switch symbol{
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}


let somoUnit = TemperatureUnit(symbol: "C")


class Product{
    let name: String
    init?(name: String) {
        if name.isEmpty{
            return nil
        }
        self.name = name
    }
}


class CartItem: Product{
    let quantity: Int
    init?(name: String, quantity: Int){
        if quantity < 1{
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
}


if let someSocks = CartItem(name: "Socks", quantity: 2){
    print("\(someSocks.name) - \(someSocks.quantity)")
}



//Desinicializadores
class Bank{
    static var coinsInBank = 2_000 //El banco tiene 2000
    static func distribute(coins numberOfCoinsRequested:Int)->Int{ //Funcion para pedir dinero a mi banco
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank) //numberOfCoinsToVend es igual al minimo entre el numero de monedas que pedi y el numero de monedas en el banco,es decir, si yo pido 8000 monedas... solo me regresara el minimo entre el numero de monedas pedidas y las que hay en el banco el cual seria 2000
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int){ //para ingresar dinero en el banco
        coinsInBank += coins
    }
}

class Player{
    var coinsInPurse: Int //Dinero en el monedero
    init(coins: Int) {//aqui las monedas que tendra en el monedero se las pedira al banco
        self.coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int){ //un numero determinado de monedas sea las que va a recolectar
        coinsInPurse += Bank.distribute(coins: coins)
    }
    //si mi jugador muere, se va a dormir o quiero retirar el monedero
    deinit {
        Bank.receive(coins: coinsInPurse) //aqui le digo al banco que va a recibir las monedas que llevo en el monedero
    }
}


//se coloca optional por que si por lo que fuera el numero de las monedas fuera mas de las que tengo en el banco se pueda lanzar un error o indicar de un modo que no se puede crear el player..
//Tambien se pone optional para poder destruirlo, ya que se is se colocara como let o como var sin el ? no se podria destruir o desinicializar
var playerOne: Player? = Player(coins: 100)


Bank.coinsInBank
playerOne!.win(coins: 2_000)

Bank.coinsInBank

playerOne = nil


