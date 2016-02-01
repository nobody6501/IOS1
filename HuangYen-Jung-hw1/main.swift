//
//  main.swift
//  HuangYen-Jung-hw1
//
//  Created by Martin Huang on 1/30/16.
//  Copyright © 2016 Martin Huang. All rights reserved.
//

import Foundation

func main() {
     print("WTF")
    var car1 = Automobile.create("Maserati", model: "GranTurismo", numberOfDoors: 2, speed: 3)
    var car2 = Automobile.create("Honda", model: "Accord", numberOfDoors: 4, speed: 5)
    var car3 = Automobile.create("Tesla", model: "S 90", numberOfDoors: 2, speed: 20)
    
    for i in 1...10 {
        
        car1.increaseSpeed(Int(randomValueBetween(0, max: 16)))
        car2.increaseSpeed(Int(randomValueBetween(0, max: 16)))
        car3.increaseSpeed(Int(randomValueBetween(0, max: 16)))
        
    }
    
    print("WTF")
    car1.description()
    print(car2.description())
    print(car3.description())
    
    if(car1.getSpeed() > car2.getSpeed() && car1.getSpeed() > car3.getSpeed()){
        print("\(car1.getMake()) \(car1.getModel()) won!!" )
    }
    

    if(car2.getSpeed() > car1.getSpeed() && car2.getSpeed() > car3.getSpeed()){
        print("\(car2.getMake()) \(car2.getModel()) won!!" )
    }
    
    if(car3.getSpeed() > car1.getSpeed() && car3.getSpeed() > car2.getSpeed()){
        print("\(car3.getMake()) \(car3.getModel()) won!!" )
    }
}

func randomValueBetween(min:UInt32, max:UInt32)->UInt32 {
    var randomValue:UInt32 = min + arc4random_uniform(UInt32(max-min+1))
    return randomValue
}