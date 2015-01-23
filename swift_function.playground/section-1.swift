// para1 is used for explicit and could be obmitted, '->' return value
func foo(para1 name:String) ->String{
    return name;
}
println(foo(para1: "wangbo"))

//multiple return
func minMax(a:Int,b:Int) -> (min: Int, max: Int){
        return (a,b)
}

// name and argument share same name
func foo2(#name:String) ->String{
    return name;
}
foo2(name: "wangbo")

// argument is function
func foo4(para1:Int, func1:Int->Int)->Int{
    return func1(para1);
}
//unkown arguments, Int... is different from Int[] array
func foo5(#numbers:Int...)->Int{
    var total=0;
    for n in numbers{
        total+=n
    }
    return total;
}
foo5(numbers: 1,2,3)

//reference and default value
func foo6(inout #number:Int , incre:Int = 1 ){
    number+=incre;
}
var tmep=1;
foo6(number: &tmep)
tmep
foo6(number: &tmep, incre: 10)
