// Playground - noun: a place where people can play

import Cocoa

func sayhello(){
    println("hello from function");
}
sayhello()

//closure is a variable with type ()->()
var sayhelloclosure: () -> () = {
    println("hello from closure");
}
sayhelloclosure()

// assign new function to closure variable
sayhelloclosure=sayhello
sayhelloclosure()

func intro(one:String,two:String) -> String{
    return one+two;
}
intro("wang", "bo")

//closure with parameters and return type
var combine: (String,String) -> String
//assign function
combine={
    a,b -> String in
    return a+b
}
combine("wang","bo")
combine={
   
    a,b -> String in a+b
}
combine("wang","bo")
combine={ $0 + $1 }
combine("wang","bo")