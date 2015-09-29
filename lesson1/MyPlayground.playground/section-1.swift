// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class MyFirstClass {
    private var instanceVariable: Int = -1
    func instanceFunction(firstParam: Int, secondParam: Int) -> Bool {
        return firstParam >= secondParam;
    }
    func pokeUser(name: String, message:String) -> Bool {
        return true
    }
    class func timeRemaining() -> Double {
        return 5.5
    }
    
    func sendMessage(message:String, toPerson:String) {
        println(message + toPerson)
    }
    
    func poke(user name:String, say message: String, important priority:Bool) -> Bool {
        if priority {
            sendMessage(message, toPerson:name)
            return true
        }
        return false
    }
}

let firstClassObject = MyFirstClass()
let myBooleanVar = firstClassObject.instanceFunction(5, secondParam:3)
let result = firstClassObject.pokeUser("bob", message:"hi")
let remaining = MyFirstClass.timeRemaining()
let didPoke = firstClassObject.poke(user:"bob", say:"yes", important:true)


class ClassStoringProperties {
    let constantProperty: String = "never changes"
    var variableProperty: Int = 1
    let constantPropertyInfer = "also never changes"
    var variablePropertyInfer = 1
}

class ClassCalculatingProperties {
    var height: Double = 0.0
    var width: Double = 0.0
    var area: Double {
        get {
            return height*width;
        }
        set(newArea) {
            width = sqrt(newArea)
            height = width
        }
    }
}

let calculatingObject = ClassCalculatingProperties()
calculatingObject.height = 9.0
calculatingObject.width = 5.0
let area = calculatingObject.area

class ObservantView: UIView {
    var text: String = "" {
        didSet(oldText) {
            if text != oldText {
                setNeedsDisplay()
            }
        }
    }
}


class BaseClass {
    func pokeUser() {
        println("poke in the base class");
    }
    func messageUser() {
        println("message in the base class");
    }
}
class DerivedClass: BaseClass {
    override func pokeUser() {
        super.pokeUser()
        println("poke in the derived class")
    }
}
let someClass = DerivedClass()
someClass.pokeUser()
someClass.messageUser()

class SomeLoops {

    func forLoop() {
        for i in 0..<10 {
            println("looping \(i)")
        }
    }
    let weather = ["rain", "snow", "sleet"]
    func forArrayLoop() {
        for percip in weather {
            println(percip)
        }
    }
    let capitals = ["new york":"albany",
        "new jersey":"trenton",
        "california":"sacremento"]
    func forDictionaryLoop() {
        let someValue = capitals["new jersey"]
        for caps in capitals {
            println("\(caps.0) captial city is \(caps.1)")
        }
    }
    
}

let someLoopsObject = SomeLoops()
someLoopsObject.forLoop()
someLoopsObject.forArrayLoop()
someLoopsObject.forDictionaryLoop()







