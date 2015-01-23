//variable declearance:
var str="Hello World"
var strVar:String="something"
//error: var strVar2:String=15

//constant:
let strVar3="i am constant"
// error: strVar3="try to modify"
let count=(1,1)

//date format:
import Cocoa
let formatter=NSDateFormatter()
formatter.locale=NSLocale.currentLocale();
formatter.dateFormat="MM/dd/yyyy"

//array:
var stringArray:[String] = ["a","b"];
stringArray.append("are");
stringArray.insert("you", atIndex: 3)
stringArray.removeAtIndex(3)
stringArray[0...2]
for(index,value) in enumerate(stringArray){
    println(" \(index) \(value) ");
}
var intArray = [Int]()
intArray = [Int](count: 7 ,repeatedValue: 40)
var doubleArray=[Double](count: 7 ,repeatedValue: 3.14)
intArray+intArray

//dictionary:
var dictionary:Dictionary<String,String> = ["01":"first","02":"second"]
Array(dictionary.keys)
var dictionary2 = ["01":"first","02":"second"]
dictionary2["03"]="third"
dictionary2.removeValueForKey("03")
dictionary2
dictionary2 = [:]

//loop:
//name the loop
mainloop: for index in 1...5{
    if index==2 {break mainloop;}
    println(index)
}
for _ in 1...5{
    println("hi")
}
for var i:Int=0;i<10;++i{
    println(i)
}

//swith:
var i:Int=3000;
mainswitch: switch i {
case 1,2,3:
    println("captured"); //no break
    fallthrough; //fall thourgh even if captured
case 2_000...4_000:
    println("large");
default:
    println("missed");
}
