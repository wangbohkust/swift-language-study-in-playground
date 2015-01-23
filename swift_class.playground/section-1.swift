// class have to initilaze itseld, whereas struct not
class Car {
    var model:String;
    var year:Int;
    var owner:String?
    //argument optional with default nil
    init(model:String, year:Int, owner:String? = nil) {
        self.model = model;
        self.year = year;
        self.owner = owner;
    }
}

var mycar = Car(model: "toyoya", year: 2010, owner:"wangbo")
class Subcar:Car{
    var level: Int
    init(model: String, year: Int, level: Int, owner: String? = nil) {
        self.level=level;
        super.init(model: model, year: year, owner: owner)
    }
    func higherthan(othercar:Subcar)->Bool{
        return level>othercar.level
    }
    // static mehtod, could be called without intilazed
    class func printout(){
        println("haha");
    }
}
var str:String="haha"
Subcar.printout();