//
//  transport.swift
//  learnZero
//
//  Created by Алексей Грачев on 22.04.2022.
//

import Foundation

class Transport {
    var name:String
    var speed:Int
    var sound:String
    init(nameOfTransport:String,speedOfTransport:Int,soundOfTransport:String) {
        self.name = nameOfTransport
        self.speed = speedOfTransport
        self.sound = soundOfTransport
    }
    func drive() {
        speed = 0
        sound = "звуки двигателя"
    }
    func beepBeep(){
        sound = "транспорт сигналит звуком бип бип"
    }
    func showMeWhatYouGot() -> String {
        print(sound)
        return String(speed)
    }
}
class MotoCycle: Transport {
    override func drive() {
        speed = 50
        sound = "звуки двигателя мотоцикла"
    }
    override func beepBeep() {
        sound = "мотоцикл сигналит"
    }
}
class Car:Transport {
    
    
    override init(nameOfTransport:String,speedOfTransport:Int,soundOfTransport:String) {
        super.init(nameOfTransport: nameOfTransport, speedOfTransport: speedOfTransport, soundOfTransport: soundOfTransport)
    }
    override func drive() {
        speed = 50
        sound = "звуки двигателя автомобиля"
    }
    override func beepBeep() {
        sound = "автомобиль сигналит"
    }
}
