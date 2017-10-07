//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class Class {
    var name = "mostafa "{
        willSet{ print("name = \(newValue) willSet") }
        didSet{ print("name = \(oldValue)  disSet") ; name = oldValue + name }
    }
    
}
var asd = Class()

asd.name = "ahemd"
asd.name

// tuples 
var car = ("BMW",2022,"blue",30)
car.0
car.1
car.2
car.3

var car2 = (name:"BMW",year:2018,color:"Red",force:25)
// by name or by index
car2.color
car2.force
car2.name
car2.year

car2.0
car2.2
car2.3
car2.1
var (name,year,color,force) = car
name
year
color
force

var (_,year1,_,force1) = car2
year1
force1
//array
var names:[String]=["Ahemd","Ali","Mohomud"]
names.isEmpty
names.append("mostafa")
var yearArray=[2010,2012,2011,2013,2014]
yearArray.append(2015)
yearArray = []
yearArray.isEmpty

names[0]
