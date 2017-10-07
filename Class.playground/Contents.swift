//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class MyClass{
   private var width:Int16 = 0
   private var height:Int16 = 0
   internal var Width:Int16 {
        get{
            return width
        }
        set(value){
            width = value
        }
    
    }
    internal var Height:Int16{
        get{
            return height
        }
        set(value){
            height = value
        }
    }
    subscript(index:Int)->Int16{
        if(index == 1){
            return width
        }else if index == 2{
            return height
        }else{
            return 0
        }
    }
    
    func area()->Int16{
        return self.height * self.Width
    }
    func InrceasedWidth(by amount: Int16){
            self.Width = amount + self.width
    }
    
}
class Circle : MyClass {
    var radius:Int = 0
    init(width:Int16 , height:Int16 , radius:Int ) {
        super.init()
        self.width  = width
        self.height = height
        self.radius = radius
    }
    deinit{
        print("deinit called")
    }
}
/*var c1 = MyClass()
c1.height = 20
c1.width = 30
print("height :\(c1.height) width :\(c1.width)")*/
var c2 = MyClass()
c2.Width = 50
c2.height = 20
print("height :\(c2.Height) width :\(c2.Width)")
print("area : \(c2.area() )")
c2.InrceasedWidth(by: -20)
print("Width : \(c2.Width )")
c2[1]
c2[2]
c2[100]
var c:Circle? = Circle(width: 10, height: 20, radius: 5)
c!.area()
c!.Height
c!.Width
c!.InrceasedWidth(by: 10)
c!.Width
c!.radius
c = nil
// protocol == interface
protocol myprotocol{
    var myname:String{get set}
    func getName()->String
}

class asden: myprotocol {
    var myname:String = ""
    func getName()->String{
        return myname
    }
}

var zxc = asden()
// extention 

extension Int{
    func GetFactorial()->Int{
        var f = 1
        for  i in 1...self{
           f *= i
        }
        return f
    }
}

var integer:Int = 4

integer.GetFactorial()
 //generic

func Sawp<T>(inout a: T ,inout b: T){
    let temp = a
    a = b
    b = temp
}

var a = 20
var b = 10
Sawp(&a, b: &b)
a
b
var a1 = 2.5
var b1 = 3.9
swap(&a1, &b1)
a1
b1
var a2 = "mostafa"
var b2 = "abdelfatah"
swap(&a2, &b2)
a2
b2
























