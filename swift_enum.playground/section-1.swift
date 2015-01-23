import Cocoa
//declare type
enum compasspoint{
    case north
    case south
    case east,west
}

//make instance
var direction=compasspoint.west
var direction2:compasspoint
direction2 = .west

//check instance's type
switch direction{
case .west:
    println("west")
case .north:
    println("west")
case .east:
    println("west")
default:
    println("west")
}

//enum with parameters
enum computer{
    case desktop(Int,String)
    case laptop(Int)
    case Phone(Int,Int,String)
}
var computer1 = computer.desktop(9,"i7")

//raw value
enum Planet:Int{
    case mercury=1, venus,earth
}
Planet.earth.rawValue

