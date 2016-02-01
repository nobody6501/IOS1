//
//  Automobile.swift
//  HuangYen-Jung-hw1
//
//  Created by Martin Huang on 1/31/16.
//  Copyright © 2016 Martin Huang. All rights reserved.
//

import Foundation

class Automobile {
    
    private var make:String
    private var model:String
    private var numberOfDoors:Int
    private var speed:Int
    
    init(make:String, model:String, numberOfDoors:Int, speed:Int) {
        self.make = make
        self.model = model
        self.numberOfDoors = numberOfDoors
        self.speed = speed
        
    }
    
    class func create(make:String, model:String, numberOfDoors:Int, speed:Int)->Automobile {
        return Automobile(make: make, model: model, numberOfDoors: numberOfDoors, speed: speed)
    }
    
    func getMake()->String {
        return make
    }
    func getModel() ->String {
        return model
    }
    func getNumberOfDoors() -> Int {
        return numberOfDoors
    }
    func getSpeed()->Int {
        return speed
    }
    func setMake(make:String) {
        self.make = make
    }
    func setModel(model:String) {
        self.model = model
    }
    func setNumberOfDoors(numOfDoors:Int) {
        self.numberOfDoors = numOfDoors
    }
    func setSpeed(speed:Int) {
        self.speed = speed
    }
    
    func increaseSpeed(speedChange:Int) {
        speed = speed + speedChange
        if(speed > 150) {
            speed = 150
        }    }
    func decreaseSpeed(speedChange:Int) {
        speed = speed - speedChange
        if(speed < 0) {
            speed = 0
        }
    }
    
    func description() ->String {
        return "Make: \(make), Model: \(model), NumDoors: \(numberOfDoors), Speed: \(speed)"
    }
    
    
}