import UIKit

enum Engine {
    
    case startengine
    case stopengine
}

enum Windows {
    
case openwindows
case closewindows
    
}

enum Baggage {

    case full
    case empty
}


struct Car {
    
    var brand:String
    var year:Int
    var state:String
    var volume:Double
    var enginestate:Engine
    var windowstate:Windows
    
    mutating func startCar (windowstate:Windows,enginestate:Engine) {
      
        if windowstate == .openwindows && enginestate == .startengine {
            state = "Машина может ехать"
        } else {
            state = "Закройте окна, запустите двигатель, после начинайте движение"
        }
    }
    
    init(brand:String, year:Int, state:String,volume:Double, enginestate:Engine, windowstate:Windows) {
        self.brand = brand
        self.year = year
        self.state = state
        self.volume = volume
        self.enginestate = enginestate
        self.windowstate = windowstate
    }
}


// car1 экземпляр Car

var car1 = Car(brand: "Lexus", year: 2019, state: "Стоит на месте", volume: 2.3, enginestate: .startengine, windowstate: .openwindows)

// Действия с экзмепляром

car1.startCar(windowstate: .closewindows, enginestate: .startengine)
car1.state

car1.startCar(windowstate: .openwindows, enginestate: .startengine)
car1.state

car1.volume = 2.7
car1.volume


struct Truck {
    
    var brand:String
    var year:Int
    var state:String
    var volume:Double
    var bagage:Baggage
    var enginestate:Engine
    
    mutating func startTruck (bagage:Baggage,enginestate:Engine) {
        
        if bagage == .full && enginestate == .startengine {
            state = "Машина загружена и может ехать"
        } else {
            state = "Загрузите машину"
        }
    
}

    init(brand:String,year:Int,state:String, volume:Double, bagage:Baggage, enginestate:Engine) {
        self.brand = brand
        self.bagage = bagage
        self.year = year
        self.state = state
        self.volume = volume
        self.enginestate = enginestate
        
    }
}

var car2 = Truck(brand: "Volovo", year: 2019, state: "Стоит на месте", volume: 3.6, bagage: .empty, enginestate: .startengine)

car2.startTruck(bagage: .empty, enginestate: .stopengine)
car2.state

car2.startTruck(bagage: .full, enginestate: .startengine)
car2.state

car2.year = 2017
car2.year
