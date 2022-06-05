//
//  main.swift
//  TaskThree
//
//  Created by Сайфуллин Ринат on 05.06.2022.
//

import Foundation


// Задание 1 -3

struct SportCar {
    var Mark: String
    var Year: Int
    var bagageVolume: Int
    var engineOn: Bool
    var openWindows : Bool
    

    init (){
        self.Mark = ""
        self.Year = 1999
        self.bagageVolume = 1
        self.engineOn = false
        self.openWindows = false
    }
    
    
    func getEngineStatus () -> String
    {
        if (engineOn == true) {
            return "Двигатель запущен"
            
        }
        else{
            return "Двигатель остановлен"
        }
    }
    func getWindowsStatus () -> String {
        if openWindows == true {
            return "Окна открыты"
            
        } else {
            return "Окна закрыты"
        }
        
    }
    
    func getBagadgeVolume () -> Int {
        return bagageVolume
        
    }
    
    mutating func actionCar (action: ActionCars) {
            switch action{
            case .engineON: self.engineOn = true
                print("Двигатель запущен")
            case .engineOFF: self.engineOn = false
                print("Двигатель остановлен ")
            case .openWindows: self.openWindows = true
                print("Окна открыты")
            case .closeWindows: self.openWindows = false
                print("Окна закрыты")
            case .loadLuggage (let volume):
                print ("Погрузили в багажник из багажника")
                self.bagageVolume = self.bagageVolume + volume
            case .unloadLuggage(let volume):
                print ("Выгрузили из багажника")
                self.bagageVolume = self.bagageVolume - volume
            default: break
                            
            }
    
    }
    public func toString (){
        print ("Автомобиль: \(self.Mark) год выпуска: \(self.Year) +  \(getEngineStatus())  \(getWindowsStatus())  объем багажа в багажнике \(getBagadgeVolume()) ")
    }
    }
    
    
    
struct TrunkCar {
    var Mark: String
    var Year: Int
    var bagageVolume: Int
    var engineOn: Bool
    var openWindows: Bool

   
    init () {
        self.Mark = ""
        self.Year = 1999
        self.bagageVolume = 1
        self.engineOn = false
        self.openWindows = false
    }
    
    
    func getEngineStatus () -> String
    {
        if (engineOn == true) {
            return "Двигатель запущен"
            
        }
        else{
            return "Двигатель остановлен"
        }
    }
    func getWindowsStatus () -> String {
        if openWindows == true {
            return "Окна открыты"
            
        } else {
            return "Окна закрыты"
        }
        
    }
    func getBagadgeVolume () -> Int {
        return bagageVolume
        
    }
    
    mutating func actionCar (action: ActionCars) {
        switch action{
        case .engineON: self.engineOn = true
            print("Двигатель запущен")
        case .engineOFF: self.engineOn = false
            print("Двигатель остановлен ")
        case .openWindows: self.openWindows = true
            print("Окна открыты")
        case .closeWindows: self.openWindows = false
            print("Окна закрыты")
        case .loadLuggage (let volume):
            print ("Идет погрузка грузовика \(volume) кг")
            self.bagageVolume = self.bagageVolume + volume
        case .unloadLuggage(let volume):
            print ("Выгрузили из багажника")
            self.bagageVolume = self.bagageVolume - volume
        default: break
                        
        }
    
    
    
    }
    
    public func toString (){
        print ("Автомобиль: \(self.Mark) год выпуска: \(self.Year) +  \(getEngineStatus())  \(getWindowsStatus())  погружено \(getBagadgeVolume()) кг. груза")
    }
}


enum ActionCars {

    case engineON
    case engineOFF
    case openWindows
    case closeWindows
    case loadLuggage  (volume: Int)
    case unloadLuggage (volume: Int)
    

}

var audi  = SportCar()
audi.Mark = "Audi Q8"
audi.Year =  2022

audi.actionCar(action: .engineON)
audi.toString()
audi.actionCar(action: .engineOFF)
audi.toString()


audi.actionCar(action: .openWindows)

audi.toString()
audi.actionCar(action: .closeWindows)
audi.toString()




var man  = TrunkCar()
man.Mark = "MAN"
man.Year =  1999

man.actionCar(action: .engineON)
man.toString()
man.actionCar(action: .engineOFF)
man.toString()


man.actionCar(action: .openWindows)

man.toString()
man.actionCar(action: .closeWindows)
man.toString()



man.actionCar(action: .loadLuggage(volume: 10000))

man.toString()

man.actionCar(action: .unloadLuggage(volume: 5999))
man.toString()


