import Cocoa
//swap int
func swap(inout a:Int, inout b:Int){
    let temp=a;
    a=b;
    b=temp
}
var a=1,b=3
swap(&a, &b)
a
b

//swap generic
func swapvalue<T>(inout a:T, inout b:T){
    let temp=a;
    a=b;
    b=temp
}

struct Stack<T>{
var items = [T]()
    mutating func push(item:T){
        items.append(item)
    }
    mutating func pop -> T{
        return items.removeLast()
    }
}
var strstack = Stack<String>()
strstack.push("cat")
strstack.push("dog")
strstack.pop()
strstack

func findIndex<T:Equatable>(array:T[],goal:T) -> Int?{
    for(index,value) in enumerate(array){
        if value == goal{
            return index
        }
    }
    return nil
}

