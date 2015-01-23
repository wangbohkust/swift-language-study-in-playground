
import Cocoa
//requirment withiout implementaton, mouban
protocol Myprotocol{
    // str could be read and set
    var code:String{ get set}
    // declare function
    func eat()
    func drink(howMuch:Int) -> Bool
}
class Adoptclass:Myprotocol{
    var code:String
    init(str2:String){
        self.code=str2
    }
    func eat(){
        println("eating")
    }
    func drink(howMuch: Int) -> Bool {
        println(howMuch);
        return true;
    }
}
// when initialized call init()
var LOR = Adoptclass(str2: "1234")
LOR.eat()
LOR.drink(5)

// protocol in enum
protocol Toggleable{
    mutating func toggle()
}
enum OnoffWith:Toggleable{
    case off,on
    mutating func toggle() {
        switch self{
        case .off:
            self=on
        case .on:
            self=off
        }
    }
}
var wallswith = OnoffWith.off;
wallswith.toggle()
wallswith == OnoffWith.off

//protocol as a function parameter
protocol Walkable{
    var name:String{get set}
    func walk(#steps: Int)
}
class playtime{
    func foo(walk:Walkable){
        println(walk.name)
        walk.walk(steps: 10)
    }
}

// declare mixed array by using anyobject  ..is
var mixedarray:AnyObject = ["3",2,1.0,"asdf"]

//protocol composition, implement all functions
protocol exercisable:Walkable{
    func run(#miles:Double)
}
class Trackstar:exercisable{
    var name="human"
    func walk(#steps: Int) {
        
    }
    func run(#miles: Double) {
        
    }
}








