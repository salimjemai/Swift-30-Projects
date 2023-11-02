import UIKit

var greeting = "Hello, playground"

func MultiplyInt(num1: Int, num2: Int ) -> Int{
    return num1 * num2;
}

func MultiplyDouble(num1: Double, num2: Double) -> Double {
    return num1 * num2;
}

func Divide(num1: Int, num2: Int) -> Int {
    return num1 / num2;
}



func getSum() -> Int {
    return 4 + 2;
}

getSum()


var sum = getSum() + 1
var multInt = MultiplyInt(num1: 5, num2: 2)
var multDouble = MultiplyDouble(num1: 2.6, num2: 7.88)
var div = Divide(num1: 7, num2: 3)

