import UIKit

//SUBINDICES

struct TimesTable{
    let multiplier:Int
    
    //Tiene una sintaxis similar a una funcion
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTables = TimesTable(multiplier: 3)
//Le dije que mi numero es 3 y se multiplicara por el subindice que le indico (en esta caso es el 6)
print("6x3 = \(threeTimesTables[6])") //regresa 18

//para el idx en el rango de 0 a 100
for idx in 0...100{
    //imprime el idx multiplicado por el subindice de la instancia (en este caso el subindice idx del multiplicador)
    print("\(idx) x 3 = \(threeTimesTables[idx])")
}


//tambien se puede hacer los subindices en los enumerados y las clases
enum Planet : Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    //se pone static el subindice para que no dependa del objeto si no del enumerado
    //partiendo del numero n me debara devolver un planeta
    static subscript(n: Int) -> Planet{
        return Planet(rawValue: n)! //este n es optional
    }
}

let mars = Planet[4]
mars



struct Matrix {
    
    let rows : Int, columns : Int
    var grid : [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row:Int, column:Int) -> Bool{
        return row>=0 && column >= 0 && row < rows && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row*columns)+column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row*columns)+column] = newValue
        }
    }
    
}


var matrix = Matrix(rows: 15, columns: 15)
matrix[0, 1] = 1.5
matrix[1, 0] = 2.5
matrix

for row in 0..<matrix.rows {
    for col in 0..<matrix.columns{
        print(matrix[row, col], separator: "", terminator: " ")
    }
    print("")
}
